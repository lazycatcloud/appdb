package main

import (
	"fmt"
	"log"
	"net/http"
	"net/http/httputil"
	"net/url"
	"os"
	"strings"
	"sync"
	"sync/atomic"
	"time"
	"wizsso/wizSso"
)

const wizServer = "http://wiz.cloud.lazycat.app.wiznote.lzcapp:80"
const wizAutoLoginToken = "wiz-sso-login"
const dataLocation = "/lzcapp/var"
const HEADER_USER_KEY = "X-Hc-User-Id"

func main() {
	//cstSh, _ := time.LoadLocation("Asia/Shanghai")
	wizSso.Initialilze(wizServer)

	//http.HandleFunc("/login", login)

	remote, err := url.Parse(wizServer)
	if err != nil {
		panic(err)
	}

	var isInitialized int32
	var lock sync.Mutex

	var wizReady int32
	/*
		if IsFileExist(filepath.Join(dataLocation, "initialized")) {
			isInitialized = 1
		} */
	getOrigin := func(r *http.Request) string {
		return fmt.Sprintf("%s://%s", r.Header.Get("X-Forwarded-Proto"), r.Header.Get("X-Forwarded-Host"))
	}

	skipPathPrefix := []string{
		"/pages", "/static", "/wapp", "/as/oauth", "/as/user/login", "login", "/lang", "/favicon.ico",
	}
	shouldSkip := func(r *http.Request) bool {
		if r.URL.Path == "/" {
			return false
		}
		for _, v := range skipPathPrefix {
			if strings.HasPrefix(r.URL.Path, v) {
				return true
			}
		}
		ck, err := r.Cookie("wizCookieToken")
		if err != nil || ck.Value == "" {
			return false
		}
		ck, err = r.Cookie(wizAutoLoginToken)
		if err == nil && ck.Value != "" {
			return true
		}
		return false
	}

	handler := func(p *httputil.ReverseProxy) func(http.ResponseWriter, *http.Request) {
		return func(w http.ResponseWriter, r *http.Request) {
			log.Println(r.URL)
			// 检查为知服务器启动情况，如果还没启动好则展示等待界面
			if atomic.LoadInt32(&wizReady) == 0 {
				if wizSso.IsServiceReady() {
					atomic.AddInt32(&wizReady, 1)
				} else {
					w.WriteHeader(http.StatusInternalServerError)
					w.Write([]byte("<h1>为知笔记正在启动，请稍后刷新</h1>"))
					return
				}
			}

			// 测试用
			if r.URL.Path == "/test" {
				err := wizSso.InitialSetting()
				if err != nil {
					println("initialsetting error", err.Error())
				}

				loginUrl, err := wizSso.GetSsoUrl("test")
				if err == nil {
					println(loginUrl)
					fmt.Printf("%v\n", r.Header)
					log.Println(getOrigin(r))
					println(strings.Replace(loginUrl, "http://wiz.cloud.lazycat.app.wiznote.lzcapp:80", getOrigin(r), 1))
				}
				return
			}

			// 初始化服务，自动用admin登录，并打开sso
			func() {
				lock.Lock()
				defer lock.Unlock()
				if atomic.LoadInt32(&isInitialized) == 0 {
					if err := wizSso.InitialSetting(); err == nil {
						atomic.AddInt32(&isInitialized, 1)
					} else {
						println("initialsetting error", err.Error())
					}
				}
			}()

			if !shouldSkip(r) && atomic.LoadInt32(&isInitialized) != 0 {
				// sso已经开启，获取用户信息并进行认证
				userId := r.Header.Get(HEADER_USER_KEY)
				if userId != "" {
					// 调自动sso
					loginUrl, err := wizSso.GetSsoUrl(userId)
					if err == nil {
						header := w.Header()
						header.Add("set-cookie", fmt.Sprintf("%s=%s; path=/; expires=%s", wizAutoLoginToken, "true", time.Now().Add(time.Minute*5).Format(time.RFC1123)))
						header.Add("location", strings.Replace(loginUrl, "http://wiz.cloud.lazycat.app.wiznote.lzcapp:80", getOrigin(r), 1))
						w.WriteHeader(http.StatusTemporaryRedirect)
						return
					} else {
						log.Println("GetSsoUrl error: ", err.Error())
					}
				}
			}
			/* _, err := r.Cookie(wizAutoLoginToken)
			if err != nil {

			} */
			if strings.HasPrefix(r.URL.Path, "/as/user/logout") {
				w.Header().Add("set-cookie", fmt.Sprintf("%s=%s; path=/; expires=Thu, 01 Jan 1970 00:00:00 GMT", wizAutoLoginToken, "false"))
			} else {
				w.Header().Add("set-cookie", fmt.Sprintf("%s=%s; path=/; expires=%s", wizAutoLoginToken, "true", time.Now().Add(time.Minute*5).Format(time.RFC1123)))
			}

			r.Host = remote.Host
			p.ServeHTTP(w, r)
		}
	}
	proxy := httputil.NewSingleHostReverseProxy(remote)
	http.HandleFunc("/", handler(proxy))

	http.ListenAndServe(":8080", nil)
}

func IsFileExist(p string) bool {
	info, err := os.Stat(p)
	if err != nil {
		return false
	}
	return !info.IsDir()
}

/* func login(w http.ResponseWriter, req *http.Request) {
	println(req.URL.Path)
	w.Write([]byte("hello"))
}
*/
