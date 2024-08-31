package wopi

import (
	"encoding/xml"
	"errors"
	"fmt"
	"io"
	"net/http"
	"os"
	"path/filepath"
	"time"

	"github.com/gin-gonic/gin"
)

const timeout = time.Second * 10

func fetch_discover_content(collaboraHost string) ([]byte, error) {
	c := http.Client{
		Timeout: timeout,
	}
	req, err := http.NewRequest(http.MethodGet, collaboraHost+"/hosting/discovery", nil)
	if err != nil {
		return nil, err
	}
	res, err := c.Do(req)
	if err != nil {
		return nil, err
	}
	defer res.Body.Close()

	return io.ReadAll(res.Body)
}

func is_support_mimeType(collaboraHost, mimeType string) (string, error) {
	bytes, err := fetch_discover_content(collaboraHost)
	if err != nil {
		return "", err
	}

	var dis WopiDiscovery
	if err := xml.Unmarshal(bytes, &dis); err != nil {
		return "", err
	}

	urlSrc := dis.matchUrlByMime(mimeType)
	if urlSrc == "" {
		return "", errors.New("mimeType is not supported by collabora")
	}

	return urlSrc, nil
}

func is_support_ext(collaboraHost, ext string) (string, error) {
	bytes, err := fetch_discover_content(collaboraHost)
	if err != nil {
		return "", err
	}

	var dis WopiDiscovery
	if err := xml.Unmarshal(bytes, &dis); err != nil {
		return "", err
	}

	urlSrc := dis.matchUrlByExt(ext)
	if urlSrc == "" {
		return "", errors.New("ext is not supported by collabora")
	}

	return urlSrc, nil
}

const (
	HEADER_USER_KEY = "X-Hc-User-Id"
)

func UserFetchHandler(c *gin.Context) {
	userId := c.GetHeader(HEADER_USER_KEY)
	if userId == "" {
		c.AbortWithError(http.StatusUnauthorized, fmt.Errorf("无法获取用户信息"))
		return
	}

	c.Set("uid", userId)
}

func GetUserId(c *gin.Context) string {
	uid, _ := c.Get("uid")
	return uid.(string)
}

// 从模板创建新文件，dest需要是绝对路径
func create_from_template(dest string) error {
	var ext string
	for i := len(dest) - 1; i > 0; i-- {
		if dest[i] == '.' {
			ext = dest[i+1:]
			break
		}
	}
	if ext == "" {
		return errors.New("invalid extname")
	}

	templatePath := filepath.Join(filepath.Dir(os.Args[0]), fmt.Sprintf("resourses/template.%s", ext))

	reader, err := os.Open(templatePath)
	if err != nil {
		return err
	}
	defer reader.Close()

	writer, err := os.Create(dest)
	if err != nil {
		return err
	}
	defer writer.Close()

	_, err = io.Copy(writer, reader)

	return err
}
