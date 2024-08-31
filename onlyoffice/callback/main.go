package main

import (
	"bytes"
	"encoding/base64"
	"encoding/json"
	"fmt"
	"net"
	"net/http"
	"net/url"
	"os"
	"strings"
)

const (
	fileSvc     = "127.0.0.1:8001"
	callbackSvc = "127.0.0.1:8002"
)

func Error(w http.ResponseWriter, error string, code int) {
	http.Error(w, error, code)
	fmt.Fprintf(os.Stderr, "callback: %s: %s\n", http.StatusText(code), error)
}

func main() {
	conn, err := net.Listen("tcp", callbackSvc)
	if err != nil {
		panic(err)
	}
	http.Serve(conn, http.HandlerFunc(
		func(w http.ResponseWriter, req *http.Request) {
			var data = map[string]any{}
			var buf bytes.Buffer

			buf.ReadFrom(req.Body)
			fmt.Fprintln(os.Stderr, buf.String())
			json.Unmarshal(buf.Bytes(), &data)

			status, ok := data["status"].(float64)
			if !ok {
				Error(w, "bad status", http.StatusBadRequest)
				return
			}
			if status == 2 || status == 6 {
				rawUrl, ok := data["url"].(string)
				if !ok {
					Error(w, "bad url", http.StatusBadRequest)
					return
				}
				key, ok := data["key"].(string)
				if !ok {
					Error(w, "bad key", http.StatusBadRequest)
					return
				}
				bkey, err := base64.StdEncoding.DecodeString(key)
				if err != nil {
					Error(w, err.Error(), http.StatusBadRequest)
					return
				}
				key = string(bkey)

				key, err = url.QueryUnescape(key)
				if err != nil {
					Error(w, err.Error(), http.StatusBadRequest)
					return
				}

				parts := strings.Split(key, ".")
				filename := strings.Join(parts[:len(parts)-1], ".")

				fmt.Fprintf(os.Stderr, "saving %s...\n", filename)
				resp, err := http.Get(rawUrl)
				if err != nil {
					Error(w, err.Error(), http.StatusInternalServerError)
					return
				}

				url := fmt.Sprintf(
					"http://%s?file=%s&token=%s",
					fileSvc, filename, req.URL.Query().Get("token"),
				)
				client := http.Client{}
				putReq, err := http.NewRequest(http.MethodPut, url, resp.Body)
				if err != nil {
					Error(w, err.Error(), http.StatusInternalServerError)
					return
				}
				resp, err = client.Do(putReq)
				if err != nil{
					Error(w, err.Error(), http.StatusInternalServerError)
					return
				}
				if resp.StatusCode != http.StatusOK {
					Error(w, "", resp.StatusCode)
				}
				fmt.Fprintf(os.Stderr, "saved %s\n", filename)
			}
			w.Write([]byte("{\"error\":0}"))
		},
	))
}
