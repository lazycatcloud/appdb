#!/bin/sh

CGO_ENABLED=0 go build -o content/randkey ./randkey/main.go
