#!/usr/bin/env bash

set -ex

name='omnivore'
commit_hash='5a8c068552e7c9aa9e38c3ee1719951df3416203'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.0.1'
image_tag="${image}:${image_version}"

mkdir -p ${name}-base/packages

git clone ${clone_url}

pushd ${name}
cp package.json yarn.lock ../${name}-base/
cp --parents ./packages/*/package.json ../${name}-base/

yarn install --frozen-lockfile
popd

pushd ${name}-base
yarn install --frozen-lockfile --production
popd

./command.sh buildapi
./command.sh buildweb
./command.sh buildbaseimg
./command.sh buildimg
./command.sh pushimg
