package main

import (
	"fmt"
	"io"
	"net"
	"net/http"
	"os"
	"path/filepath"
	"strings"
	"sync"

	"github.com/google/uuid"
)

const (
	fileRoot = "/lzcapp/run/mnt/home"
	fileSvc  = "0.0.0.0:8001"
)

var (
	s = map[string]string{}
	l = sync.RWMutex{}
)

func tokenToUser(token string) string {
	l.RLock()
	user, ok := s[token]
	l.RUnlock()
	if !ok {
		return ""
	} else {
		return user
	}
}
func userToToken(user string) string {
	l.RLock()
	defer l.RUnlock()
	for token, _user := range s {
		if _user == user {
			return token
		}
	}
	return ""
}

func Contains[T comparable](s []T, e T) bool {
	for _, v := range s {
		if v == e {
			return true
		}
	}
	return false
}

func Error(w http.ResponseWriter, error string, code int) {
	http.Error(w, error, code)
	fmt.Fprintf(os.Stderr, "file: %s: %s\n", http.StatusText(code), error)
}

func main() {
	conn, err := net.Listen("tcp", fileSvc)
	if err != nil {
		panic(err)
	}
	http.Serve(conn, http.HandlerFunc(
		func(w http.ResponseWriter, req *http.Request) {

			w.Header().Add("Access-Control-Allow-Origin", "*")

			user := req.Header.Get("X-Hc-User-Id")
			if user != "" {
				if req.Method != "GET" {
					Error(w, "", http.StatusMethodNotAllowed)
				}
				t := userToToken(user)
				if t == "" {
					t = uuid.NewString()
					l.Lock()
					s[t] = user
					l.Unlock()
				}
				w.Write([]byte(t))
				return
			} else {
				t := req.URL.Query().Get("token")
				user = tokenToUser(t)
				if user == "" {
					Error(w, "", http.StatusForbidden)
					return
				}
				file := req.URL.Query().Get("file")

				if Contains(strings.Split(file, "/"), "..") {
					Error(w, "\"..\" is not allowed", http.StatusBadRequest)
					return
				}

				filename := filepath.Join(fileRoot, user, file)

				if req.Method == "GET" {
					stat, err := os.Stat(filename)
					if err != nil {
						Error(w, "", http.StatusNotFound)
						return
					}

					if stat.IsDir() {
						Error(w, "is a directory", http.StatusForbidden)
						return
					}

					http.ServeFile(w, req, filename)
				} else if req.Method == "PUT" {
					f, err := os.Create(filename)
					if err != nil {
						Error(w, err.Error(), http.StatusInternalServerError)
						return
					}
					_, err = io.Copy(f, req.Body)
					if err != nil {
						Error(w, err.Error(), http.StatusInternalServerError)
						return
					}
				} else {
					Error(w, "", http.StatusMethodNotAllowed)
					return
				}
			}
		},
	))
}
