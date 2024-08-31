#!/bin/sh

set -ex

name='ddd-cashbook'
commit_hash='713c4932602bcc8f20d666d8c16abd1b5443101f'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v1.0.6-lzc1-1'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}

docker build -f Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
