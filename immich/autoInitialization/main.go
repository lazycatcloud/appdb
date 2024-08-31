package main

import (
	"encoding/json"
	"errors"
	"fmt"
	"io/ioutil"
	"net/http"
	"os"
	"time"
)

var IMMICH_WEB_URL = "http://immich-web:3000"
var IMMICH_SERVER_URL = "http://immich-server:3001"
var IMMICH_MACHINE_LEARNING_URL = "http://immich-machine-learning:3003"

func LOG(args ...string) {
	fmt.Printf("====== AUTO INITIALIZATION %v\n", args)
}

var (
	SERVER_UNKNOWN_STATUS = errors.New("unknown")
	SERVER_FOUND          = errors.New("/auth/login 302 Found")
	SERVER_INITED         = errors.New("server inited")
)

const (
	ADMIN_EMAIL  = "immich@heiyu.space"
	ADMIN_PASSWD = "G!X44gcem7b2NeT"
)

// 检查应用初始化状态
func checkStatus() error {
	client := http.Client{
		Timeout: time.Second,
		CheckRedirect: func(req *http.Request, via []*http.Request) error {
			return http.ErrUseLastResponse
		},
	}
	req, err := http.NewRequest(http.MethodGet, IMMICH_WEB_URL+"/auth/login", nil)
	if err != nil {
		return err
	}
	resp, err := client.Do(req)
	if err != nil {
		return err
	}
	defer resp.Body.Close()

	if resp.StatusCode == http.StatusFound {
		return SERVER_FOUND
	}
	if resp.StatusCode == http.StatusOK {
		return SERVER_INITED
	}

	LOG("checkStatus", resp.Status)

	return SERVER_UNKNOWN_STATUS
}

func regist() error {
	headers := map[string]string{
		"Content-Type": "application/json",
	}
	payload := map[string]interface{}{
		"email":     ADMIN_EMAIL,
		"firstName": "Admin",
		"lastName":  "Immich",
		"password":  ADMIN_PASSWD,
	}

	resp, err := Post(IMMICH_SERVER_URL+"/auth/admin-sign-up", headers, payload)
	if err != nil {
		return err
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusCreated {
		bd, _ := ioutil.ReadAll(resp.Body)
		LOG("regist", string(bd))
		return errors.New(resp.Status)
	}

	return nil
}

func login() (string, error) {
	headers := map[string]string{
		"Content-Type": "application/json",
	}
	payload := map[string]interface{}{
		"email":    ADMIN_EMAIL,
		"password": ADMIN_PASSWD,
	}
	resp, err := Post(IMMICH_SERVER_URL+"/auth/login", headers, payload)
	if err != nil {
		return "", err
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusCreated {
		bd, _ := ioutil.ReadAll(resp.Body)
		LOG("login", string(bd))
		return "", errors.New(resp.Status)
	}
	type LoginResp struct {
		AccessToken          string `json:"accessToken"`
		FirstName            string `json:"firstName"`
		LastName             string `json:"lastName"`
		IsAdmin              bool   `json:"isAdmin"`
		ProfileImagePath     string `json:"profileImagePath"`
		ShouldChangePassword bool   `json:"shouldChangePassword"`
		UserEmail            string `json:"userEmail"`
		UserId               string `json:"userId"`
	}
	bd, _ := ioutil.ReadAll(resp.Body)
	loginResp := LoginResp{}
	if err := json.Unmarshal(bd, &loginResp); err != nil {
		return "", err
	}
	return loginResp.AccessToken, nil
}

func ConfigOAuth(token string) error {
	headers := map[string]string{
		"Cookie": fmt.Sprintf("immich_access_token=%s", token),
	}
	loginResp, err := Get(IMMICH_SERVER_URL+"/system-config", headers, nil)
	if err != nil {
		return err
	}
	defer loginResp.Body.Close()

	sysConf := OauthConfig{}
	bd, _ := ioutil.ReadAll(loginResp.Body)
	if err := json.Unmarshal(bd, &sysConf); err != nil {
		return err
	}
	sysConf.Oauth = oauth{
		Enabled:               true,
		IssuerUrl:             os.Getenv("OAUTH2_SERVER_URL"),
		ClientId:              os.Getenv("OAUTH2_CLIENT_ID"),
		ClientSecret:          os.Getenv("OAUTH2_CLIENT_SECRET"),
		MobileOverrideEnabled: false,
		MobileRedirectUri:     "",
		Scope:                 "openid email profile",
		ButtonText:            "Login with Lazycat Account",
		AutoRegister:          true,
		AutoLaunch:            false,
	}

	headers["Content-Type"] = "application/json; charset=utf-8"
	resp, err := Put(IMMICH_SERVER_URL+"/system-config", headers, sysConf)
	if err != nil {
		return err
	}
	defer resp.Body.Close()

	cfg, _ := ioutil.ReadAll(resp.Body)
	LOG("ConfigOAuth", string(cfg))

	return nil
}

func main() {
	IMMICH_WEB_URL = os.Getenv("IMMICH_WEB_URL")
	IMMICH_SERVER_URL = os.Getenv("IMMICH_SERVER_URL")
	IMMICH_MACHINE_LEARNING_URL = os.Getenv("IMMICH_MACHINE_LEARNING_URL")

	for {
		status := checkStatus()
		if status == SERVER_INITED {
			LOG("main", "server has been initialized")
			return
		} else if status == SERVER_FOUND {
			LOG("main", "server is not initialized")
			break
		} else if status == SERVER_UNKNOWN_STATUS {
			LOG("main", "unknown error")
		} else {
			LOG("main ERROR", status.Error())
		}
		time.Sleep(time.Millisecond * 500)
	}

	// 若后端已经启动，并且没有注册过，手动注册帐号
	if err := regist(); err != nil {
		LOG("main", err.Error())
		return
	}

	token, err := login()
	if err != nil {
		LOG("main", err.Error())
		return
	}

	ConfigOAuth(token)
}
