#!/usr/bin/env bash

set -ex

name='lsky-pro'
commit_hash='796168d139334d5f29b8d76fdbf61c42e69d9e81'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.0.2'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}

docker build -f Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
