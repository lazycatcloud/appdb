#!/usr/bin/env bash

set -ex

name='three-dxf'
commit_hash='650f859a46733b2548bd356e4dd643a4d7ada2ec'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.0.1'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}

docker build -f Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
