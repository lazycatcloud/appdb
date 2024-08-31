#!/bin/sh

set -ex

name='photonix'
commit_hash='57564385d922b4c63d3a1ff3dd2d09753c49f024'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.0.1'
image_tag="${image}:${image_version}"

git clone ${clone_url}

pushd ${name}
git checkout "${commit_hash}"

pushd ui
yarn install --immutable
NODE_ENV=production yarn build
popd

docker build -f ./docker/Dockerfile.prd -t "${image_tag}" .
docker push "${image_tag}"
popd
