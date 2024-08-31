#!/usr/bin/env bash

set -xe

function cmd-zip-frontend() {
	zip -r - ./cloudreve-frontend/build > ./cloudreve/assets.zip
}

function cmd-build-frontend() {
	pushd ./cloudreve-frontend
	yarn build
	popd
}

function cmd-build-backend() {
	pushd ./cloudreve
	CGO_ENABLED=0 go build -o cloudreve
	popd
}

function cmd-build-lpk() {
	lzc-cli project build
}

function cmd-install-lpk() {
	lzc-cli app install cloud.lazycat.app.cloudreve-${1:-v0.0.1}.lpk
}

function cmd-build-image() {
	pushd ./cloudreve
	docker build -f Dockerfile -t registry.lazycat.cloud/appdb/cloudreve:${1:-latest} .
	popd
}

function cmd-push-image() {
	docker push registry.lazycat.cloud/appdb/cloudreve:${1:-latest}
}

cmd-$1 "$2"
