#!/bin/sh

set -ex

name='sshwifty'
commit_hash='7e90e35afc883209897af05183cec57c8261197d'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.3.0-lzc1-1'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}

docker build -f Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
