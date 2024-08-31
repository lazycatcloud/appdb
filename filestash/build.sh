#!/usr/bin/env bash

set -ex

name='filestash'
commit_hash='40168cd536b786d93dff7bae3482593fca57a43a'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.0.1'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}


docker build -f Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
