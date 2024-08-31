#!/bin/sh

set -ex

name='tldraw'
commit_hash='8e9e060efee8eb915ab4bb5b84bf866a717c781d'
clone_url="git@gitee.com:lazycatcloud/${name}-v1.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.0.2'
image_tag="${image}:${image_version}"

git clone ${clone_url}
mkdir ${name}

pushd ${name}-v1
git checkout "${commit_hash}"

docker build -f Dockerfile -t "${image_tag}" .
docker push "${image_tag}"

popd
