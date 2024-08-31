package auth

import (
	"fmt"
	"strings"
	"sync"

	"github.com/google/uuid"
)

type AuthMeta struct {
	UID      string `json:"-"`
	FileId   string `json:"file_id"`
	FilePath string `json:"-"` // 绝对路径
	Token    string `json:"access_token"`
}

var tokens map[string]AuthMeta
var locker sync.Mutex

func init() {
	tokens = make(map[string]AuthMeta, 0)
}

func Create(uid, path string) (*AuthMeta, error) {
	locker.Lock()
	defer locker.Unlock()

	var token string
	for {
		token = strings.Join(strings.Split(uuid.NewString(), "-"), "")
		_, exist := tokens[token]
		if !exist {
			break
		}
	}
	fileid := fmt.Sprintf("%d", len(tokens))
	tokens[token] = AuthMeta{
		UID:      uid,
		FileId:   fileid,
		FilePath: path,
		Token:    token,
	}
	m := tokens[token]
	return &m, nil
}

func Check(fileid, token string) *AuthMeta {
	locker.Lock()
	defer locker.Unlock()

	m, exist := tokens[token]
	if !exist {
		return nil
	}
	fmt.Printf("Get AuthMeta: %v\n", m)
	if m.FileId != fileid {
		return nil
	}

	return &m
}

/*
func Invalid(token string) {
	locker.Lock()
	defer locker.Unlock()

	_, exist := tokens[token]
	if exist {
		delete(tokens, token)
	}
}
*/
