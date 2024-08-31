#!/usr/bin/env bash

set -ex

release_name=Tachidesk-Server-v0.7.0-r1197-linux-x64
release_url=https://github.com/Suwayomi/Tachidesk-Server/releases/download/v0.7.0/${release_name}.tar.gz
version=v0.0.1
image=registry.lazycat.cloud/appdb/tachidesk
image_tag=${image}:${version}

wget ${release_url}
tar -zxvf ${release_name}.tar.gz
mv ${release_name} tachidesk

docker build -f Dockerfile -t ${image_tag} .
docker push ${image_tag}
