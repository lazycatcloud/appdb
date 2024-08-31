#!/usr/bin/env bash

set -ex

name='lazy-librarian'
commit_hash='0166724588b3054303287c8d3adbd02cc30774e9'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.0.1'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}

docker build -f Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
