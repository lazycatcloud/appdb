package main

import (
	"fmt"
	"net"
	"net/http"
	"os"
)

func main() {
	nekoConfigFile := os.Getenv("NEKO_CONFIG")
	iprecords, _ := net.LookupIP(os.Getenv("LAZYCAT_APP_DOMAIN"))

	cFile, err := os.OpenFile(nekoConfigFile, os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0755)
	if err != nil {
		println("[neko] open error", nekoConfigFile, err.Error())
	}
	if len(iprecords) >= 1 {
		str := fmt.Sprintf("nat1to1: \"%s\"\n", iprecords[0].String())
		println("[neko] gen config", str)
		_, err = cFile.Write([]byte(str))
		if err != nil {
			println("[neko] Write error", err.Error())
		}
		cFile.Close()
	}

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		for _, ip := range iprecords {
			w.Write([]byte(ip.String() + "\n"))
			println(ip.String())
			//w.Write([]byte("192.168.33.144"))
			return
		}
		w.WriteHeader(http.StatusInternalServerError)
	})

	http.ListenAndServe(":8090", nil)
}
