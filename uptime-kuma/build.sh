#!/bin/sh

set -ex

name='uptime-kuma'
commit_hash='0f22dc251699a4f773f6d7cc7ddfb8d5c5d44f01'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v1.23.2-lzc1'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}
git checkout ${commit_hash}

docker build -f Dockerfile -t "${image_tag}" ./uptime-kuma
docker push "${image_tag}"
popd
