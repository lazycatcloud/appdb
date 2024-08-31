#!/usr/bin/env bash

set -ex

name='lidarr'
commit_hash='f4c4036b5a586c51274e28a857d3b7d799998165'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.0.1'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}

./build.sh -r linux-x64 -f net6.0 --all

docker build -f ../Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
