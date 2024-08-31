package wizSso

import (
	"bytes"
	"encoding/json"
	"net/http"
	"net/url"
	"os"
	"time"
)

func getHttpReq(method string, path string, header map[string]string, queryParams map[string]string) (*http.Response, error) {
	client := &http.Client{
		Timeout: time.Millisecond * 200,
	}

	url, err := url.Parse(wizServer + path)
	if err != nil {
		return nil, err
	}

	query := url.Query()
	for k, v := range queryParams {
		query.Add(k, v)
	}
	url.RawQuery = query.Encode()

	req, err := http.NewRequest(method, url.String(), nil)
	if err != nil {
		return nil, err
	}
	req.Header.Add("Host", os.Getenv("LAZYCAT_APP_ORIGIN"))
	for k, v := range header {
		req.Header.Add(k, v)
	}

	return client.Do(req)
}

func sendHttpReq(method string, path string, header map[string]string, jsonBody map[string]interface{}) (*http.Response, error) {
	client := &http.Client{
		Timeout: time.Millisecond * 200,
	}

	url, err := url.Parse(wizServer + path)
	if err != nil {
		return nil, err
	}

	query := url.Query()
	query.Add("clientType", "web")
	query.Add("clientVersion", "4.0")
	query.Add("lang", "zh-cn")
	url.RawQuery = query.Encode()

	body, err := json.Marshal(jsonBody)
	if err != nil {
		return nil, err
	}

	req, err := http.NewRequest(method, url.String(), bytes.NewBuffer(body))
	if err != nil {
		return nil, err
	}
	for k, v := range header {
		req.Header.Add(k, v)
	}

	return client.Do(req)
}
