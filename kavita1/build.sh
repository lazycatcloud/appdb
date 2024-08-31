#!/usr/bin/env bash

set -ex

name='kavita'
commit_hash='ab945be6b0b8f6a874fa8bc6cb576e3e1c746986'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.0.1'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}

./build.sh linux-x64

docker build -f Dockerfile -t "${image_tag}" \
	--build-arg TARGETPLATFORM=linux/amd64 \
	.
docker push "${image_tag}"
popd
