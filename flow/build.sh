#!/bin/sh

set -ex

name='flow-epub-reader'
commit_hash='981f87330b346e317b4698fcdc59405e00c17b1f'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.0.3'
image_tag="${image}:${image_version}"

git clone ${clone_url}

pushd ${name}
git checkout "${commit_hash}"

pnpm install --frozen-lockfile
DOCKER=1 pnpm -F reader build

wget -O apps/reader/.next/static/chunks/lzc-file-pickers.umd.js \
	https://cdn.jsdelivr.net/npm/@lazycatcloud/lzc-file-pickers@1.3.14/dist/lzc-file-pickers.umd.js

docker build -f Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
