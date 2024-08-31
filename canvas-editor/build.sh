#!/bin/sh

set -ex

name='canvas-editor'
commit_hash='3fef665f34fe7cd5b56a785e7bf4bebcce0eecfb'
clone_url="git@gitee.com:lazycatcloud/${name}.git"

git clone ${clone_url}

pushd ${name}
git checkout "${commit_hash}"

yarn install --immutable
yarn run build

wget -O ./dist/assets/lzc-file-pickers.umd.js \
    https://cdn.jsdelivr.net/npm/@lazycatcloud/lzc-file-pickers@1.3.14/dist/lzc-file-pickers.umd.js
popd
