#!/bin/sh

set -ex

name='snapdrop'
commit_hash='902cc741940b546f9477bbdaf09efa57f7497d7a'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}-server"
image_version='v0.0.1'
image_tag="${image}:${image_version}"

git clone ${clone_url}
pushd ${name}
git checkout ${commit_hash}

docker build -f ./docker/Dockerfile -t ${image_tag} ./server
docker push ${image_tag}

popd
