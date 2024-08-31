#!/bin/sh

set -ex

SHELLDIR="$(dirname "$(realpath "$0")")"

cd "$SHELLDIR"

cd ../ui

npm run build

cd ../src

CC=musl-gcc go build -ldflags "-s -w -linkmode external -extldflags -static" -o backend
