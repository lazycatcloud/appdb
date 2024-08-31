#!/bin/sh

set -ex

name='svgedit'
commit_hash='c6005d0e6c375245ff5d7efeec8b9a24d9f9fa25'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.3.0-lzc1-1'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}

docker build -f Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
