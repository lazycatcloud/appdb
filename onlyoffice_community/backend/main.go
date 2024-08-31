package main

import (
	"flag"
	"net/http"
	"net/http/httputil"
	"net/url"
	"path/filepath"

	"github.com/gin-gonic/gin"
	"linakesi.com/collabora/wopi"
)

func proxyHandler(proxy_url, prefix string) func(c *gin.Context) {
	return func(c *gin.Context) {
		println(c.Request.URL.Path)
		remote, err := url.Parse(proxy_url)
		if err != nil {
			panic(err)
		}

		proxy := httputil.NewSingleHostReverseProxy(remote)
		//Define the director func
		//This is a good place to log, for example
		proxy.Director = func(req *http.Request) {
			req.Header = c.Request.Header
			req.Host = remote.Host
			req.URL.RawQuery = c.Request.URL.RawQuery
			req.URL.Scheme = remote.Scheme
			req.URL.Host = remote.Host
			req.URL.Path = filepath.Join(prefix, c.Param("proxyPath"))
		}

		proxy.ServeHTTP(c.Writer, c.Request)
	}
}
func main() {
	homeDir := flag.String("homeDir", "/lzcapp/run/mnt/home", "user's documents directory")
	// userDataRoot := flag.String("userDataRoot", "/lzcapp/var/data", "uesr datadir in this app")

	url := flag.String("CODE", "http://collabora.sqemu.heiyu.space", "collabora online server host")
	urlInner := flag.String("CODE_internal", "http://server.cloud.lazycat.app.onlyofficedocs.lzcapp:80", "collabora online server host")

	//url := flag.String("CODE", "https://collabora.imsquare.cn", "collabora online server host")
	//urlInner := flag.String("CODE_internal", "https://collabora.imsquare.cn", "collabora online server host")

	flag.Parse()

	wopiServer := wopi.Init(*url, *urlInner, *homeDir)

	r := gin.Default()

	r.GET("/ping", func(ctx *gin.Context) {
		ctx.JSON(http.StatusOK, gin.H{"message": "pong"})
	})

	//r.Handle("", "/cool/*proxyPath", proxyHandler(*urlInner, "/cool/"))
	/*
		r.Any("/cool/*proxyPath", proxyHandler(*urlInner, "/cool/"))
		r.Any("/browser/*proxyPath", proxyHandler(*urlInner, "/browser/"))
		r.Any("/hosting/*proxyPath", proxyHandler(*urlInner, "/hosting/")) */

	wopiServer.Register(r.Group("/"))

	r.Run()
}
