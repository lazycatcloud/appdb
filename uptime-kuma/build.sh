#!/bin/sh

set -ex

name='uptime-kuma'
commit_hash='e0e2195f5c01591f289e2ae1b19c5cd0b75e909a'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v2.0.2-lzc3'
image_tag="${image}:${image_version}"

if [ ! -d "$name"]; then
    git clone ${clone_url}
fi
pushd ${name}
git fetch --all
git checkout ${commit_hash}
popd

docker build --platform linux/amd64 -f Dockerfile -t "${image_tag}" ./uptime-kuma
docker push "${image_tag}"
