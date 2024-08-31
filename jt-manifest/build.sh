#!/bin/sh

set -ex

name='jt-manifest'
commit_hash='74d2039ddc93415fadb2fa6db21a00222a3dca3f'
clone_url="git@gitee.com:lazycatcloud/${name}.git"

git clone ${clone_url}
pushd ${name}
git checkout ${commit_hash}

yarn install --immutable
yarn run build

popd
