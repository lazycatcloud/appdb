package xtermjs

import (
	"bytes"
	"context"
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"os"
	"os/exec"
	"strings"
	"sync"
	"time"

	"github.com/creack/pty"
	"github.com/gorilla/websocket"
)

const DefaultConnectionErrorLimit = 10

type HandlerOpts struct {
	// Arguments is a list of strings to pass as arguments to the specified COmmand
	Arguments []string
	// Command is the path to the binary we should create a TTY for
	Command string
	// ConnectionErrorLimit defines the number of consecutive errors that can happen
	// before a connection is considered unusable
	ConnectionErrorLimit int
	// KeepalivePingTimeout defines the maximum duration between which a ping and pong
	// cycle should be tolerated, beyond this the connection should be deemed dead
	KeepalivePingTimeout time.Duration
	MaxBufferSizeBytes   int
}

type TerminalConnection struct {
	cmd  *exec.Cmd
	tty  *os.File
	isUp bool
}

func NewTerminal() *TerminalConnection {
	return &TerminalConnection{
		cmd:  nil,
		tty:  nil,
		isUp: false,
	}
}

func (t *TerminalConnection) StartTerminal(command string, args []string) (tty *os.File, err error) {
	if t.isUp {
		log.Println("Command is running")
		return t.tty, nil
	}
	log.Printf("starting new tty using command '%s' with arguments ['%s']...", command, strings.Join(args, "', '"))
	t.cmd = exec.Command(command, args...)
	t.cmd.Env = os.Environ()
	t.tty, err = pty.Start(t.cmd)
	t.isUp = true
	return t.tty, nil
}

func (t *TerminalConnection) StopTerminal() {
	log.Println("gracefully stopping spawned tty...")
	if err := t.cmd.Process.Kill(); err != nil {
		log.Printf("failed to kill process: %s", err)
	}
	if _, err := t.cmd.Process.Wait(); err != nil {
		log.Printf("failed to wait for process to exit: %s", err)
	}
	if err := t.tty.Close(); err != nil {
		log.Printf("failed to close spawned tty gracefully: %s", err)
	}
	t.isUp = false
}

func GetHandler(opts HandlerOpts, callback func()) func(http.ResponseWriter, *http.Request) {
	t := NewTerminal()
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithCancel(context.Background())
		defer cancel()

		connectionErrorLimit := opts.ConnectionErrorLimit
		if connectionErrorLimit < 0 {
			connectionErrorLimit = DefaultConnectionErrorLimit
		}
		maxBufferSizeBytes := opts.MaxBufferSizeBytes
		keepalivePingTimeout := opts.KeepalivePingTimeout
		if keepalivePingTimeout <= time.Second {
			keepalivePingTimeout = 20 * time.Second
		}

		upgrader := getConnectionUpgrader(maxBufferSizeBytes)
		connection, err := upgrader.Upgrade(w, r, nil)
		if err != nil {
			log.Printf("failed to upgrade connection: %s", err)
			return
		}
		defer connection.Close()

		terminal := opts.Command
		args := opts.Arguments
		tty, err := t.StartTerminal(terminal, args)
		if err != nil {
			log.Printf("failed to start tty: %s", err)
			connection.WriteMessage(websocket.TextMessage, []byte(fmt.Sprintf("failed to start tty: %s", err)))
			return
		}

		// 控制退出的信号
		closeChan := make(chan struct{})
		var writeMutex sync.Mutex

		// Keep-alive Loop
		go func() {
			lastPongTime := time.Now()
			connection.SetPongHandler(func(msg string) error {
				lastPongTime = time.Now()
				return nil
			})
			ticker := time.NewTicker(keepalivePingTimeout / 2)
			defer ticker.Stop()

			for {
				select {
				case <-ctx.Done():
					return
				case <-ticker.C:
					writeMutex.Lock()
					err := connection.WriteMessage(websocket.PingMessage, []byte("keepalive"))
					writeMutex.Unlock()
					if err != nil {
						log.Println("failed to send ping message, closing connection:", err)
						closeChan <- struct{}{}
						return
					}
					if time.Since(lastPongTime) > keepalivePingTimeout {
						log.Println("ping timeout, closing connection")
						closeChan <- struct{}{}
						return
					}
				}
			}
		}()

		// 从 TTY 读取并发送给 WebSocket
		go func() {
			buffer := make([]byte, maxBufferSizeBytes)
			for {
				select {
				case <-ctx.Done():
					return
				default:
					readLength, err := tty.Read(buffer)
					if err != nil {
						log.Printf("failed to read from tty: %s", err)
						t.StopTerminal()
						closeChan <- struct{}{}
						callback()
						return
					}

					writeMutex.Lock()
					err = connection.WriteMessage(websocket.BinaryMessage, buffer[:readLength])
					writeMutex.Unlock()
					if err != nil {
						log.Printf("failed to send %v bytes from tty to xterm.js: %s", readLength, err)
						continue
					}
				}
			}
		}()

		// 从 WebSocket 读取并写入 TTY
		go func() {
			for {
				select {
				case <-ctx.Done():
					return
				default:
					messageType, data, err := connection.ReadMessage()
					if err != nil {
						log.Printf("failed to read from websocket: %s", err)
						closeChan <- struct{}{}
						return
					}

					if messageType == websocket.BinaryMessage && len(data) > 0 && data[0] == 1 {
						ttySize := &TTYSize{}
						resizeMessage := bytes.Trim(data[1:], "\x00")
						if err := json.Unmarshal(resizeMessage, ttySize); err != nil {
							log.Printf("failed to parse resize message: %s", err)
							continue
						}
						pty.Setsize(tty, &pty.Winsize{Rows: ttySize.Rows, Cols: ttySize.Cols})
						continue
					}

					_, err = tty.Write(data)
					if err != nil {
						log.Printf("failed to write to tty: %s", err)
						continue
					}
				}
			}
		}()

		// 等待关闭信号
		<-closeChan
		cancel()
		log.Println("connection closed")
	}
}
