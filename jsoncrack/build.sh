#!/bin/sh

set -ex

name='jsoncrack'
commit_hash='147a0f3f5ebbfed09561184f94ab70b773e56ff8'
clone_url="git@gitee.com:lazycatcloud/${name}.git"

git clone ${clone_url}
pushd ${name}
git checkout ${commit_hash}

yarn install --immutable
yarn run build

popd
