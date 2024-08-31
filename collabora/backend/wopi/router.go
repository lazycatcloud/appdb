package wopi

import (
	"encoding/xml"
	"errors"
	"fmt"
	"io"
	"net/http"
	"net/url"
	"os"
	"path/filepath"
	"strings"
	"time"

	"github.com/gin-gonic/gin"
	"github.com/gorilla/websocket"
	"github.com/linakesi/lnksutils"
	"linakesi.com/collabora/auth"
)

type Server struct {
	//collaboraHost      string
	collaboraHostInner string
	homedir            string
}

func Init(url, urlInner, homeDir string) *Server {
	var i = len(url) - 1

	for ; i >= 0; i-- {
		if i != '/' {
			break
		}
	}
	return &Server{
		homedir: homeDir,
		//collaboraHost:      url[0 : i+1],
		collaboraHostInner: urlInner,
	}

}

func (s *Server) Register(g *gin.RouterGroup) {

	a := g.Group("api")
	a.Use(UserFetchHandler)
	a.GET("discover", s.discover)
	a.GET("isSupport", s.isSupportMime)
	a.GET("token", s.genWopiToken)
	a.GET("conflict", s.checkConflict)
	a.POST("create", s.create)
	a.POST("isActive", s.active)

	g.POST("files/cool", s.postCool)
	g.GET("files/:id", s.checkInfo)          // CheckFileInfo
	g.POST("files/:id", s.saveAs)            // PutRelativeFile
	g.GET("files/:id/contents", s.GetFile)   // GetFile
	g.POST("files/:id/contents", s.PostFile) // PutFile

	g.GET("/testWS", func(ctx *gin.Context) {
		println("test websocket")
		var upgrader = websocket.Upgrader{
			ReadBufferSize:  1024 * 1024 * 1024,
			WriteBufferSize: 1024 * 1024 * 1024,
			//Solving cross-domain problems
			CheckOrigin: func(r *http.Request) bool {
				return true
			},
		}
		conn, err := upgrader.Upgrade(ctx.Writer, ctx.Request, nil)
		if err != nil {
			ctx.AbortWithError(http.StatusBadGateway, err)
			return
		}
		conn.WriteMessage(websocket.TextMessage, []byte("hello"))
		for {
			_, _, err := conn.ReadMessage()
			if err != nil {
				break
			}
		}
	})
}

func (s *Server) postCool(ctx *gin.Context) {
	type coolReq struct {
		UrlSrc  string `json:"url_src"`
		Title   string `json:"title"`
		FileId  string `json:"file_id"`
		Token   string `json:"token"`
		WOPISrc string `json:"WopiSrc"`
		Lang    string `json:"lang"`
	}

	var cool coolReq
	err := ctx.BindJSON(&cool)
	if err != nil {
		ctx.JSON(http.StatusBadRequest, err.Error())
		return
	}
	fmt.Printf("%v \n", cool)

	params := url.Values{}
	params.Add("WOPISrc", cool.WOPISrc)
	params.Add("title", filepath.Base(cool.Title))
	params.Add("lang", cool.Lang)
	params.Add("closebutton", "1")

	form := url.Values{}
	form.Add("access_token", cool.Token)

	u, err := url.Parse(cool.UrlSrc) //url.Parse(strings.ReplaceAll(cool.UrlSrc, s.collaboraHost, s.collaboraHostInner))
	if err != nil {
		ctx.JSON(http.StatusBadRequest, err.Error())
		return
	}
	fmt.Printf(" %v \n", u.Host)

	u.RawQuery = params.Encode()

	c := http.Client{
		Timeout: timeout,
	}
	req, err := http.NewRequest(http.MethodPost, u.String(), strings.NewReader(form.Encode()))
	if err != nil {
		ctx.JSON(http.StatusBadRequest, err.Error())
		return
	}
	req.Header.Add("Content-Type", "application/x-www-form-urlencoded")

	resp, err := c.Do(req)
	if err != nil {
		ctx.JSON(http.StatusBadRequest, err.Error())
		return
	}

	n, err := io.Copy(ctx.Writer, resp.Body)
	if err != nil {
		ctx.JSON(http.StatusBadRequest, err.Error())
		return
	}
	println(n)
}

func (s *Server) discover(ctx *gin.Context) {
	bytes, err := fetch_discover_content(s.collaboraHostInner)

	if err != nil {
		ctx.JSON(http.StatusBadRequest, err)
		return
	}

	var dis WopiDiscovery
	if err := xml.Unmarshal(bytes, &dis); err != nil {
		ctx.JSON(http.StatusBadRequest, err)
		return
	}

	ctx.Status(http.StatusOK)
}

func (s *Server) isSupportMime(ctx *gin.Context) {
	var (
		mimeType = ctx.Query("mime")
		ext      = ctx.Query("ext")
	)
	if mimeType == "" && ext == "" {
		ctx.JSON(http.StatusBadRequest, errors.New("query mime or ext is needed").Error())
		return
	}

	var urlSrc string
	var err error
	if mimeType != "" {
		urlSrc, err = is_support_mimeType(s.collaboraHostInner, mimeType)
	} else if ext != "" {
		urlSrc, err = is_support_ext(s.collaboraHostInner, ext)
	}

	if err != nil {
		ctx.JSON(http.StatusBadRequest, err.Error())
		return
	}

	//strings.Replace(urlSrc, "http://", "https://", 1)
	ctx.JSON(http.StatusOK, gin.H{
		"urlSrc": urlSrc,
	})
}

func (s *Server) checkInfo(ctx *gin.Context) {
	var (
		accessToken = ctx.Query("access_token")
		id          = ctx.Param("id")
	)

	metaInfo := auth.Check(id, accessToken)
	if metaInfo == nil {
		ctx.AbortWithError(http.StatusBadRequest, errors.New("id and token not match"))
		return
	}

	info, err := os.Stat(metaInfo.FilePath)
	if err != nil {
		ctx.AbortWithError(http.StatusBadRequest, err)
		return
	}

	ctx.JSON(http.StatusOK, gin.H{
		"BaseFileName":            filepath.Base(metaInfo.FilePath),
		"OwnerId":                 metaInfo.UID,
		"Size":                    info.Size(),
		"UserId":                  metaInfo.UID,
		"UserCanWrite":            true,
		"UserCanNotWriteRelative": true,
	})
}
func (s *Server) saveAs(ctx *gin.Context) {
	fmt.Printf("saveAs: %v \n", ctx.Request.Header)
}
func (s *Server) PostFile(ctx *gin.Context) {
	var (
		accessToken = ctx.Query("access_token")
		id          = ctx.Param("id")
	)
	metaInfo := auth.Check(id, accessToken)
	if metaInfo == nil {
		ctx.AbortWithError(http.StatusBadRequest, errors.New("id and token not match"))
		return
	}

	f, err := os.OpenFile(metaInfo.FilePath, os.O_WRONLY|os.O_CREATE|os.O_TRUNC, 0755)
	if err != nil {
		ctx.AbortWithError(http.StatusBadRequest, err)
		return
	}
	defer f.Close()

	n, err := io.Copy(f, ctx.Request.Body)
	if err != nil {
		ctx.AbortWithError(http.StatusBadRequest, err)
		return
	}
	println("PostFile", n, "Bytes Copied")
}
func (s *Server) GetFile(ctx *gin.Context) {
	var (
		accessToken = ctx.Query("access_token")
		id          = ctx.Param("id")
	)
	metaInfo := auth.Check(id, accessToken)
	if metaInfo == nil {
		ctx.AbortWithError(http.StatusBadRequest, errors.New("id and token not match"))
		return
	}

	f, err := os.Open(metaInfo.FilePath)
	if err != nil {
		ctx.AbortWithError(http.StatusBadRequest, err)
		return
	}
	defer f.Close()

	n, err := io.Copy(ctx.Writer, f)
	if err != nil {
		ctx.AbortWithError(http.StatusBadRequest, err)
		return
	}
	println("GetFile", n, "Bytes Copied")
}

func (s *Server) genWopiToken(ctx *gin.Context) {
	path := ctx.Query("file")
	uid := GetUserId(ctx)

	if uid == "" {
		ctx.JSON(http.StatusBadRequest, errors.New("用户未登录").Error())
		return
	}

	if path == "" {
		ctx.JSON(http.StatusBadRequest, errors.New("路径为空").Error())
		return
	}

	absolutePath := filepath.Join(s.homedir, uid, path)
	if !lnksutils.IsExist(absolutePath) {
		ctx.JSON(http.StatusBadRequest, errors.New("文件不存在").Error())
		return
	}

	meta, err := auth.Create(uid, absolutePath)
	if err != nil {
		ctx.JSON(http.StatusBadRequest, err.Error())
		return
	}

	ctx.JSON(http.StatusOK, meta)
}

func (s *Server) checkConflict(ctx *gin.Context) {
	path := ctx.Query("file")
	uid := GetUserId(ctx)

	if uid == "" {
		ctx.JSON(http.StatusBadRequest, errors.New("用户未登录").Error())
		return
	}

	if path == "" {
		ctx.JSON(http.StatusBadRequest, errors.New("路径为空").Error())
		return
	}

	absolutePath := filepath.Join(s.homedir, uid, path)

	ctx.JSON(http.StatusOK, gin.H{
		"conflict": lnksutils.IsExist(absolutePath),
	})
}

func (s *Server) create(ctx *gin.Context) {
	uid := GetUserId(ctx)

	if uid == "" {
		ctx.JSON(http.StatusBadRequest, errors.New("用户未登录").Error())
		return
	}

	type createReq struct {
		FilePath string `json:"file"`
	}

	var req createReq
	err := ctx.BindJSON(&req)
	if err != nil {
		ctx.JSON(http.StatusBadRequest, err.Error())
		return
	}

	absPath := filepath.Join(s.homedir, uid, req.FilePath)

	if lnksutils.IsExist(absPath) {
		ctx.JSON(http.StatusBadRequest, errors.New("文件已存在").Error())
		return
	}

	err = create_from_template(absPath)
	if err != nil {
		ctx.JSON(http.StatusBadRequest, err.Error())
		return
	}
}

func (s *Server) active(ctx *gin.Context) {
	c := http.Client{
		Timeout: time.Second / 2,
	}
	req, err := http.NewRequest(http.MethodGet, s.collaboraHostInner, nil)
	if err != nil {
		ctx.JSON(http.StatusInternalServerError, err.Error())
		return
	}
	res, err := c.Do(req)
	if err != nil {
		ctx.JSON(http.StatusOK, gin.H{"message": "Collabora 正在启动"})
		return
	}
	defer res.Body.Close()
	if res.StatusCode != http.StatusOK {
		ctx.JSON(http.StatusOK, gin.H{"message": "Collabora 正在启动"})
		return
	}

	ctx.JSON(http.StatusOK, gin.H{"message": "OK"})
}
