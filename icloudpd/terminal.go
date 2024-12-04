package main

import (
	"main/xtermjs"
	"net/http"

	"log"

	"github.com/gorilla/mux"
	"github.com/prometheus/client_golang/prometheus/promhttp"
)

func StartTerminal(args []string, firstRouter *mux.Router) *mux.Router {
	router := mux.NewRouter()

	xtermjsHandlerOptions := xtermjs.HandlerOpts{
		Arguments:            args,
		Command:              "icloudpd",
		ConnectionErrorLimit: 10,
		KeepalivePingTimeout: 20,
		MaxBufferSizeBytes:   512,
	}
	swapFirstRouter := func() {
		Swapper.Swap(firstRouter)
	}

	router.HandleFunc("/xterm.js", xtermjs.GetHandler(xtermjsHandlerOptions, swapFirstRouter))

	router.HandleFunc("/readyz", func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		w.Write([]byte("ok"))
	})
	router.HandleFunc("/healthz", func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		w.Write([]byte("ok"))
	})
	router.HandleFunc("/version", func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		w.Write([]byte("dev"))
	})

	router.Handle("/metrics", promhttp.Handler())

	router.PathPrefix("/assets").Handler(http.StripPrefix("/assets", http.FileServer(http.Dir("static"))))

	router.PathPrefix("/").Handler(http.FileServer(http.Dir("static")))

	// handler := http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
	// 	router.ServeHTTP(w, r)
	// })

	log.Println("Start handling terminal")
	return router
}
