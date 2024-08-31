#!/usr/bin/env bash

set -ex

name='syncthing'
commit_hash='c1659cf166eaa0da0570032c5abb91faf938ecd4'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.0.1'
image_tag="${image}:${image_version}"

git clone ${clone_url}

pushd ${name}
git checkout "${commit_hash}"

go mod tidy
CGO_ENABLED=0 go run build.go -no-upgrade build syncthing

docker build -f ./Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
