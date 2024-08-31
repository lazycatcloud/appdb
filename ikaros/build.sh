#!/bin/sh

set -ex

name='ikaros'
commit_hash='6294f726b222a2200c481dc56ff07dbd475077e5'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.7.4-lzc1-1'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}

pushd console
pnpm install --frozen-lockfile
pnpm run build
popd

./gradlew clean build -x test

docker build -f Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
