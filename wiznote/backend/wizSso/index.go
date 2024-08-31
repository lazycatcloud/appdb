package wizSso

import (
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"log"
	"net/http"
	"os"
	"strings"
	"time"
)

var wizServer string
var wizClientId string
var wizClientSecret string

func Initialilze(server string) {
	wizServer = server
}

/* sso login url */
func GetSsoUrl(uid string) (string, error) {
	accessToken, err := getAccessToken(wizClientId, wizClientSecret)
	if err != nil {
		return "", err
	}

	loginUrl, err := getLoginUrl(accessToken, fmt.Sprintf("%v@heiyu.space", uid))
	if err != nil {
		return "", err
	}
	return loginUrl, nil
}

func getAccessToken(clientId, clientSecret string) (string, error) {
	header := map[string]string{}
	params := map[string]string{
		"clientId":     clientId,
		"clientSecret": clientSecret,
	}
	resp, err := getHttpReq(
		http.MethodGet,
		"/as/oauth/token",
		header,
		params,
	)
	if err != nil {
		return "", err
	}
	defer resp.Body.Close()

	bytes, _ := io.ReadAll(resp.Body)
	type result struct {
		AccessToken string `json:"accessToken"`
		Expires     int64  `json:"expires"`
	}
	type wizStruct struct {
		wizRetStruct
		Result result `json:"result"`
	}
	var retBody wizStruct
	if err := json.Unmarshal(bytes, &retBody); err != nil {
		return "", err
	}
	if retBody.ReturnCode != 200 {
		return "", errors.New("AccessToken获取失败")
	}

	return retBody.Result.AccessToken, nil
}

func getLoginUrl(accessToken, uid string) (string, error) {
	header := map[string]string{}
	params := map[string]string{
		"accessToken": accessToken,
		"userId":      uid,
	}
	resp, err := getHttpReq(
		http.MethodGet,
		"/as/oauth/service/login_url",
		header,
		params,
	)
	if err != nil {
		return "", err
	}
	defer resp.Body.Close()

	bytes, _ := io.ReadAll(resp.Body)
	type wizStruct struct {
		wizRetStruct
		Result string `json:"result"`
	}
	var retBody wizStruct
	if err := json.Unmarshal(bytes, &retBody); err != nil {
		return "", err
	}
	if retBody.ReturnCode != 200 {
		log.Printf("getLoginUrl error: %v\n", retBody)
		return "", errors.New(uid + " SSO登录失败")
	}
	return retBody.Result, nil
}

/*  检查为知笔记后端是否启动成功，没启动好会返回502状态 */
func IsServiceReady() bool {
	client := &http.Client{
		Timeout: time.Millisecond * 200,
	}

	req, err := http.NewRequest("GET", wizServer, nil)
	if err != nil {
		fmt.Println(err)
		return false
	}

	resp, err := client.Do(req)
	if err != nil {
		fmt.Println(err)
		return false
	}
	defer resp.Body.Close()

	if resp.StatusCode != 200 {
		return false
	}

	return true
}

/*  初始化为知服务器 */
type wizRetStruct struct {
	ReturnCode     int    `json:"returnCode"`
	ReturnMessage  string `json:"returnMessage"`
	Code           int    `json:"code"`
	Return_Code    int    `json:"return_code"`
	Return_Message string `json:"return_message"`
	ExternCode     string `json:"externCode"`
}

func InitialSetting() error {
	cookie, token, err := loginAsAdmin()
	if err != nil {
		return err
	}

	println("=======", cookie, token)

	clientId, clientSecret, err := enableSso(token)
	if err != nil {
		return err
	}

	println("=======", clientId, clientSecret)

	clientId, clientSecret, err = enableAutoLogin(token)
	if err != nil {
		return err
	}

	wizClientId = clientId
	wizClientSecret = clientSecret

	return nil

}

func GetWizCookieToken(header http.Header) string {
	cookies := header["Set-Cookie"]
	for _, v := range cookies {
		if strings.HasPrefix(v, "wizCookieToken") {
			splts := strings.Split(v, ";")
			if len(splts) < 1 {
				continue
			}
			cookie := strings.Split(splts[0], "=")
			if len(cookie) < 2 {
				continue
			}
			return cookie[1]
		}
	}
	return ""
}

// 用默认admin登录
func loginAsAdmin() (string, string, error) {
	header := map[string]string{
		"Content-Type": "application/json",
	}
	body := map[string]interface{}{
		"userId":    "admin@wiz.cn",
		"password":  "123456",
		"autoLogin": true,
		"domain":    os.Getenv("LAZYCAT_APP_ORIGIN"),
	}
	resp, err := sendHttpReq(
		http.MethodPost,
		"/as/user/login",
		header,
		body,
	)
	if err != nil {
		return "", "", err
	}
	defer resp.Body.Close()

	if resp.StatusCode != 200 {
		return "", "", errors.New("admin登录请求错误")
	}

	bd, _ := io.ReadAll(resp.Body)

	type result struct {
		Token string `json:"token"`
	}
	type wizStruct struct {
		wizRetStruct
		Result result `json:"result"`
	}
	var retBody wizStruct
	if err := json.Unmarshal(bd, &retBody); err != nil {
		return "", "", err
	}
	if retBody.ReturnCode != 200 {
		return "", "", errors.New("admin登录失败")
	}

	// fmt.Printf("Headers: %v\n", resp.Header["Set-Cookie"])
	// fmt.Printf("body: %v\n", retBody.Result)

	cookie := GetWizCookieToken(resp.Header)
	token := retBody.Result.Token

	if cookie != "" && token != "" {
		return cookie, token, nil

	} else {
		return "", "", errors.New("fail to login as admin")
	}
}

func enableSso(token string) (string, string, error) {
	header := map[string]string{
		"Content-Type": "application/json",
		"x-wiz-token":  token,
	}
	body := map[string]interface{}{
		"enabled": true,
	}
	resp, err := sendHttpReq(
		http.MethodPut,
		"/as/admin/oauth",
		header,
		body,
	)
	if err != nil {
		return "", "", err
	}
	defer resp.Body.Close()

	bytes, _ := io.ReadAll(resp.Body)
	fmt.Printf("oauth content: %v \n", string(bytes))

	if resp.StatusCode != 200 {
		return "", "", errors.New("打开sso时状态错误")
	}

	type result struct {
		Enabled        bool   `json:"enabled"`
		ClientId       string `json:"clientId"`
		ClientSecret   string `json:"clientSecret"`
		AutoCreateUser bool   `json:"autoCreateUser"`
	}
	type wizStruct struct {
		wizRetStruct
		Result result `json:"result"`
	}
	var retBody wizStruct
	if err := json.Unmarshal(bytes, &retBody); err != nil {
		return "", "", err
	}
	if retBody.ReturnCode != 200 {
		return "", "", errors.New("sso打开失败")
	}
	if !retBody.Result.Enabled {
		return "", "", errors.New("sso开启失败")
	}

	return retBody.Result.ClientId, retBody.Result.ClientSecret, nil
}

func enableAutoLogin(token string) (string, string, error) {
	header := map[string]string{
		"Content-Type": "application/json",
		"x-wiz-token":  token,
	}
	body := map[string]interface{}{
		"autoCreateUser": true,
	}
	resp, err := sendHttpReq(
		http.MethodPut,
		"/as/admin/oauth/auto_create",
		header,
		body,
	)
	if err != nil {
		return "", "", err
	}
	defer resp.Body.Close()

	bytes, _ := io.ReadAll(resp.Body)
	fmt.Printf("Headers: %v\n", resp.Header)
	fmt.Printf("body: %v\n", string(bytes))

	type result struct {
		Enabled        bool   `json:"enabled"`
		ClientId       string `json:"clientId"`
		ClientSecret   string `json:"clientSecret"`
		AutoCreateUser bool   `json:"autoCreateUser"`
	}
	type wizStruct struct {
		wizRetStruct
		Result result `json:"result"`
	}
	var retBody wizStruct
	if err := json.Unmarshal(bytes, &retBody); err != nil {
		return "", "", err
	}
	if retBody.ReturnCode != 200 {
		return "", "", errors.New("自动创建打开失败")
	}
	if !retBody.Result.Enabled {
		return "", "", errors.New("自动创建开启失败")
	}

	return retBody.Result.ClientId, retBody.Result.ClientSecret, nil
}
