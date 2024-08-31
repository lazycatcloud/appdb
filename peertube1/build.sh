#!/bin/sh

set -ex

name='peertube'
commit_hash='5bbea0d7358bdc181f1c028ea1bf33f0f4c7159b'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v5.2.1-lzc1-1'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}

docker build --network=host \
	-f ./support/docker/lzc/Dockerfile \
	-t "${image_tag}" \
	.
docker push "${image_tag}"
popd
