package main

import (
	"crypto/rand"
	"encoding/base64"
	"flag"
	"fmt"
	"os"
	"os/exec"
)

func generateKey() (string, error) {
	key := make([]byte, 128) // 32 bytes = 256 bits
	_, err := rand.Read(key)
	if err != nil {
		return "", err
	}
	return base64.StdEncoding.EncodeToString(key)[:64], nil
}

func isExist(path string) bool {
	_, err := os.Stat(path)
	if err != nil {
		return false
	}
	return true
}

func main() {
	outputFile := flag.String("output", "/lzcapp/var/rustdeskoss.key", "key output file.")
	flag.Parse()

	var key string
	var err error
	if isExist(*outputFile) {
		buf, err := os.ReadFile(*outputFile)
		if err != nil {
			panic(err)
		}
		key = string(buf)
	} else {
		key, err = generateKey()
		if err != nil {
			panic(err)
		}

		err = os.WriteFile(*outputFile, []byte(key), 0644)
		if err != nil {
			panic(err)
		}
	}
	fmt.Println("read rustdeskoss key success!")

	cmd := exec.Command("hbbs", "-k", key)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	err = cmd.Run()
	if err != nil {
		panic(err)
	}
}
