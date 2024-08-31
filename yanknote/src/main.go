package main

import (
	"encoding/json"
	"fmt"
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", chown)
	http.ListenAndServe(":8000", nil)
}

// curl -X POST localhost:8000/chown --data '{"path": "/tmp/caddy"}'
func chown(resp http.ResponseWriter, req *http.Request) {
	println(req.URL.Path)
	resp.Header().Add("Server", "Golang")
	if req.Method != http.MethodPost {
		resp.WriteHeader(http.StatusNotFound)
		resp.Write([]byte("404 page not found\n"))
		return
	}

	type chownPath struct {
		Path string `json:"path"`
	}
	var p chownPath

	if err := json.NewDecoder(req.Body).Decode(&p); err != nil {
		resp.WriteHeader(http.StatusInternalServerError)
		resp.Write([]byte(err.Error()))
		return
	}

	if err := os.Chown(p.Path, 1000, 1000); err != nil {
		resp.WriteHeader(http.StatusInternalServerError)
		resp.Write([]byte(err.Error()))
		return
	}
	/* var body []byte
	n, err := req.Body.Read(body)
	if err != nil {
		resp.WriteHeader(http.StatusInternalServerError)
		println("read body error: ", err.Error())
		return
	}
	println("change own of:", n, string(body)) */
	resp.Write([]byte(fmt.Sprintf("succes to chown to 1000:1000: %s", p.Path)))
}
