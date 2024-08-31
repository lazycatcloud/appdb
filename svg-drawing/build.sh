#!/bin/sh

set -ex

name='svg-drawing'
commit_hash='53a43496d7ded3c78917c748fad10e734a9255b3'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.2.2-dev-lzc1-1'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}

docker build -f Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
