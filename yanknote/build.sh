#!/bin/bash

cd src
CGO_ENABLED=0 go build -a -ldflags '-extldflags "-static"' .
cd ..

mkdir -p dist
cp src/chown dist
