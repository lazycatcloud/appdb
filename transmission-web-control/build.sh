#!/usr/bin/env bash

set -ex

name='transmission-web-control'
commit_hash='8c4ce99e371867a47d863bcc8c51355fdf847609'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v1.6.31-lzc1-1'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}

docker build -f Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
