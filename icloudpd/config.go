package main

import (
	"errors"
	"fmt"
	"log"
	"os"
	"path"
	"strconv"
	"strings"
)

func GenerateArgument(config Config) ([]string, error) {
	if strings.TrimSpace(config.Username) == "" {
		return nil, errors.New("username cannot be empty")
	}

	dirName := path.Join(LZC_PICTURES, fmt.Sprintf("来自iCloud(%s)", config.Username))
	err := os.MkdirAll(dirName, 0766)
	if err != nil {
		log.Println("fail to create dir")
		return nil, err
	}

	arg := make([]string, 0)
	arg = append(arg, "--directory", dirName)
	arg = append(arg, "--cookie-directory", "/lzcapp/var")

	arg = append(arg, "--username", config.Username)

	if strings.TrimSpace(config.Password) == "" {
		return nil, errors.New("password cannot be empty")
	}
	arg = append(arg, "--password", config.Password)

	if strings.TrimSpace(config.Domain) != "" {
		arg = append(arg, "--domain", config.Domain)
	}

	if config.AuthOnly {
		arg = append(arg, "--auth-only")
		return arg, nil
	}

	if strings.TrimSpace(config.Album) != "" {
		arg = append(arg, "--album", config.Album)
	}

	if strings.TrimSpace(config.Size) == "" {
		return nil, errors.New("size cannot be empty")
	}
	arg = append(arg, "--size", config.Size)

	if strings.TrimSpace(config.LivePhotoSize) == "" {
		return nil, errors.New("Live Photo video size cannot be empty")
	}
	arg = append(arg, "--live-photo-size", config.LivePhotoSize)

	if config.Recent != 0 {
		arg = append(arg, "--recent", strconv.Itoa(config.Recent))
	}

	if config.AutoDelete {
		arg = append(arg, "--auto-delete")
	}

	if config.SkipVideos {
		arg = append(arg, "--skip-videos")
	}

	if config.SkipLivePhotos {
		arg = append(arg, "--skip-live-photos")
	}

	if strings.TrimSpace(config.FolderStructure) != "" {
		arg = append(arg, "--folder-structure", config.FolderStructure)
	}

	if strings.TrimSpace(config.LogLevel) != "" {
		arg = append(arg, "--log-level", config.LogLevel)
	}

	if strings.TrimSpace(config.Advanced) != "" {
		arg = append(arg, strings.Split(config.Advanced, " ")...)
	}
	arg = append(arg, "--set-exif-datetime")
	return arg, nil
}
