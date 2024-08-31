#!/bin/sh

set -ex

name='paperless-ngx'
commit_hash='6d8deadd30b4a6ee22d38ca78c3c239cfcefd2c8'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v1.17.4-lzc'
image_tag="${image}:${image_version}"

git clone ${clone_url}

pushd ${name}
git checkout "${commit_hash}"

python3 -W ignore::RuntimeWarning -m nltk.downloader -d ./nltk_data/ snowball_data
python3 -W ignore::RuntimeWarning -m nltk.downloader -d ./nltk_data/ stopwords
python3 -W ignore::RuntimeWarning -m nltk.downloader -d ./nltk_data/ punkt
curl --output paperless-ngx.tar.gz --location https://github.com/paperless-ngx/builder/archive/58bb061b9b3b63009852d6d875f9a305d9ae6ac9.tar.gz

pushd src-ui
npm ci --omit=optional
./node_modules/.bin/ng build --configuration production
popd

docker build -t "${image_tag}" .
docker push "${image_tag}"
popd
