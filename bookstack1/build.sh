#!/usr/bin/env bash

set -ex

name='bookstack'
commit_hash='1b9a7af40684ea5cb3b3a56d49fc5c1f582e987c'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.0.1'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}


docker build -f Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
