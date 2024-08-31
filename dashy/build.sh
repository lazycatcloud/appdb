#!/usr/bin/env bash

set -ex

name='dashy'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
branch_name='feat/lzc'
commit_hash='2169d92a88b0e95c4fa35bc43e5bf388556dc06c'
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.0.2'
image_tag="${image}:${image_version}"

# git clone ${clone_url}
# git checkout ${branch_name}
# git checkout ${commit_hash}
pushd ${name}

# yarn install --immutable
# yarn build --mode production

docker build -f ./Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
