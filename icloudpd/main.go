package main

import (
	"html/template"
	"log"
	"net/http"
	"os"
	"strconv"
	"sync"

	"github.com/gorilla/mux"
)

const DEFAULT_LZC_PICTURES = "/lzcapp/run/mnt/home/Pictures"

var LZC_PICTURES string

var Swapper routerSwapper
var firstRouter *mux.Router

type routerSwapper struct {
	root *mux.Router
	mu   sync.Mutex
}

func (rs *routerSwapper) Swap(newRouter *mux.Router) {
	rs.mu.Lock()
	rs.root = newRouter
	rs.mu.Unlock()
}

func (rs *routerSwapper) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	rs.mu.Lock()
	root := rs.root
	rs.mu.Unlock()
	root.ServeHTTP(w, r)
}

type Config struct {
	Username        string
	Password        string
	AuthOnly        bool
	Album           string
	Size            string
	LivePhotoSize   string
	Recent          int
	AutoDelete      bool
	SkipVideos      bool
	SkipLivePhotos  bool
	FolderStructure string
	LogLevel        string
	Domain          string
	Advanced        string
}

func eq(val1, val2 string) bool {
	return val1 == val2
}

var tmpl = template.Must(template.New("config").Funcs(template.FuncMap{
	"eq": eq,
}).ParseFiles("config.html"))

func serveConfig(w http.ResponseWriter, r *http.Request) {
	config := Config{
		Username:        "",
		Password:        "",
		AuthOnly:        false,
		Album:           "",
		Size:            "original",
		LivePhotoSize:   "original",
		Recent:          0,
		AutoDelete:      false,
		SkipVideos:      false,
		SkipLivePhotos:  false,
		FolderStructure: "",
		LogLevel:        "debug",
		Domain:          "com",
		Advanced:        "",
	}

	err := tmpl.ExecuteTemplate(w, "config.html", config)
	if err != nil {
		http.Error(w, "tmpl execute fail: "+err.Error(), http.StatusInternalServerError)
	}
}

func handleFormSubmit(w http.ResponseWriter, r *http.Request) {
	if err := r.ParseForm(); err != nil {
		http.Error(w, "表单解析失败", http.StatusBadRequest)
		return
	}

	config := Config{
		Username:        r.FormValue("username"),
		Password:        r.FormValue("password"),
		AuthOnly:        r.FormValue("auth_only") == "on",
		Album:           r.FormValue("album"),
		Size:            r.FormValue("size"),
		LivePhotoSize:   r.FormValue("live_photo_size"),
		Recent:          atoi(r.FormValue("recent")),
		AutoDelete:      r.FormValue("auto_delete") == "on",
		SkipVideos:      r.FormValue("skip_videos") == "on",
		SkipLivePhotos:  r.FormValue("skip_live_photos") == "on",
		FolderStructure: r.FormValue("folder_structure"),
		LogLevel:        r.FormValue("log_level"),
		Domain:          r.FormValue("domain"),
	}

	args, err := GenerateArgument(config)
	if err != nil {
		http.Error(w, "config error: "+err.Error(), http.StatusBadRequest)
		return
	}
	router := StartTerminal(args, firstRouter)
	Swapper.Swap(router)

	http.Redirect(w, r, "/", http.StatusSeeOther)
}

func atoi(str string) int {
	num, err := strconv.Atoi(str)
	if err != nil {
		log.Printf("unknow number: %v, err: %s", num, err)
		num = 0
	}
	return num
}

func main() {
	specPath := os.Getenv("LZC_PICTURES_PATH")
	if specPath == "" {
		LZC_PICTURES = DEFAULT_LZC_PICTURES
	}

	firstRouter = mux.NewRouter()
	firstRouter.HandleFunc("/", serveConfig)
	firstRouter.HandleFunc("/submit", handleFormSubmit)
	firstRouter.PathPrefix("/static/").Handler(http.StripPrefix("/static", http.FileServer(http.Dir("static"))))

	Swapper = routerSwapper{
		root: firstRouter,
		mu:   sync.Mutex{},
	}

	handler := http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		Swapper.ServeHTTP(w, r)
	})

	server := http.Server{
		Handler: handler,
		Addr:    ":8086",
	}

	log.Println("Start server at :8086")
	log.Fatal(server.ListenAndServe())
}
