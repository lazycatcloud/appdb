#!/usr/bin/env bash

set -ex

name='plane'
commit_hash='41dca3396b9adcf87af0e2e962b0d243ece4925c'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.0.1'
image_tag="${image}:${image_version}"

git clone ${clone_url}

pushd ${name}
git checkout "${commit_hash}"

yarn install --frozen-lockfile
yarn turbo run build --filter=app

docker build -f ./Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
