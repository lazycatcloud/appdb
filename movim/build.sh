#!/bin/sh

set -ex

name='movim'
commit_hash='e2576585692550f9b81b20687a7d9d63d198e878'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.22.3-lzc1-1'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}

docker build --network=host -f Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
