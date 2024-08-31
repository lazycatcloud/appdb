#!/usr/bin/env bash

set -ex
exit # 疑似修改后的版本已经丢失

name='openproject'
commit_hash='37a4dda65489ce463bc8923ca7635e47c895c090'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.0.1'
image_tag="${image}:${image_version}"

git clone ${clone_url}

pushd ${name}
git checkout "${commit_hash}"

docker build --network=host -f ./docker/prod/Dockerfile -t "${image_tag}" .
docker push "${image_tag}"
popd
