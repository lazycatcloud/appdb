#!/usr/bin/env bash

set -ex

name='deluge'
commit_hash='4528719f34f2d46a541739408c26e06bf6e38927'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v2.1.1-lzc1-1'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}

docker build -f ../Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
