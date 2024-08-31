#!/usr/bin/env bash

set -ex

name='chevereto'
commit_hash='26c343c6ffed412c8f9d4488cfccafe9806e0e75'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.0.3'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}

docker build --network=host -f Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
