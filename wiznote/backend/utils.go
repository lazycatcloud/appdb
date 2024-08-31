package main

import (
	"encoding/json"
)

func GetXWixToken(body []byte) string {
	type result struct {
		Token string `json:"token"`
	}
	type queryToken struct {
		Result result `json:"result"`
	}

	res := queryToken{}

	if err := json.Unmarshal(body, &res); err != nil {
		println(err.Error())
		return ""
	}

	return res.Result.Token
}
