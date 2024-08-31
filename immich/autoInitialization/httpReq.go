package main

import (
	"bytes"
	"encoding/json"
	"net/http"
	"time"
)

// JSON发送POST请求
func Post(url string, header map[string]string, body map[string]interface{}) (*http.Response, error) {
	client := &http.Client{Timeout: time.Millisecond * 500}

	bodyBytes, err := json.Marshal(body)
	if err != nil {
		return nil, err
	}
	req, err := http.NewRequest(http.MethodPost, url, bytes.NewBuffer(bodyBytes))
	if err != nil {
		return nil, err
	}
	if header != nil {
		for k, v := range header {
			req.Header.Add(k, v)
		}
	}

	return client.Do(req)
}

func Put(url string, header map[string]string, body OauthConfig) (*http.Response, error) {
	client := &http.Client{Timeout: time.Millisecond * 500}

	bodyBytes, err := json.Marshal(body)
	if err != nil {
		return nil, err
	}

	req, err := http.NewRequest(http.MethodPut, url, bytes.NewBuffer(bodyBytes))
	if err != nil {
		return nil, err
	}
	if header != nil {
		for k, v := range header {
			req.Header.Add(k, v)
		}
	}

	return client.Do(req)
}

func Get(url string, header map[string]string, query map[string]string) (*http.Response, error) {
	client := &http.Client{
		Timeout: time.Millisecond * 500,
		CheckRedirect: func(req *http.Request, via []*http.Request) error {
			return http.ErrUseLastResponse
		},
	}

	req, err := http.NewRequest(http.MethodGet, url, nil)
	if err != nil {
		return nil, err
	}
	if header != nil {
		for k, v := range header {
			req.Header.Add(k, v)
		}
	}
	if query != nil {
		params := req.URL.Query()
		for k, v := range query {
			params.Add(k, v)
		}
		req.URL.RawQuery = params.Encode()
	}

	return client.Do(req)
}
