#!/bin/sh

rm -rf ./content

mkdir ./content

cd backend
CGO_ENABLED=0 go build -a -ldflags '-extldflags "-static"' .
cd -
mv ./backend/wizsso ./content/backend
