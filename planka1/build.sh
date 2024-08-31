#!/bin/sh

set -ex

name='planka'
commit_hash='dde6b7eef65113b96c03b7e4cf76520d217d8a04'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v1.14.1-lzc1'
image_tag="${image}:${image_version}"

git clone ${clone_url}

pushd ${name}
git checkout "${commit_hash}"

wget https://github.com/libvips/libvips/releases/download/v8.13.3/vips-8.13.3.tar.gz

docker build -f Dockerfile.base -t planka-base .
docker build -f Dockerfile --network=host -t "${image_tag}" .
docker push "${image_tag}"
popd
