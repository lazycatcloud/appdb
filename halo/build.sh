#!/usr/bin/env bash

set -ex

name='halo'
commit_hash='38106d4b6e66ded068a1463f89b6894c0bba441e'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v2.8.0-lzc1-1'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}

pushd console
pnpm install --frozen-lockfile
pnpm build:packages
pnpm build
popd

./gradlew clean build -x check

docker build -f Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
