#!/bin/sh

set -ex

name='vikunja-api'
commit_hash='59f5639285924f37de8d3a2ba74de657157222c3'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.21.0-lzc1'
image_tag="${image}:${image_version}"

git clone ${clone_url}

pushd ${name}
git checkout "${commit_hash}"

docker build -f Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
