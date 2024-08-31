#!/bin/sh

set -ex

SHELLDIR="$(dirname "$(realpath "$0")")"

cd "$SHELLDIR"

cd ../ui

npm run build

cd ../src

# CC=musl-gcc go build -ldflags "-s -w -linkmode external -extldflags -static" -o backend

GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o backend
