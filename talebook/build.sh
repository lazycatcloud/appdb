#!/usr/bin/env bash

set -ex

name='talebook'
commit_hash='ee1009cca0665a7db33dcbbc50339b60d542b05d'
clone_url="git@gitee.com:linakesi/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.0.2'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd "${name}"
git checkout "${commit_hash}"
docker build -f Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
