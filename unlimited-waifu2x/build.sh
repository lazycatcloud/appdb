#!/bin/sh

set -ex

name='nunif'
commit_hash='e607a0087364cfe2c922861315621d449fe43ebe'
clone_url="git@gitee.com:lazycatcloud/${name}.git"
image="registry.lazycat.cloud/appdb/unlimited-waifu2x"
image_version='v0.0.2'
image_tag="${image}:${image_version}"

git clone ${clone_url}

pushd ${name}
git checkout "${commit_hash}"
pushd waifu2x/unlimited_waifu2x

wget https://github.com/nagadomi/nunif/releases/download/0.0.0/waifu2x_onnx_models_20230504.zip
unzip waifu2x_onnx_models_20230504.zip
mv onnx_models public_html/models

pushd public_html
wget https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js
wget https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js
wget https://cdn.jsdelivr.net/npm/onnxruntime-web/dist/ort.min.js
wget https://cdn.jsdelivr.net/npm/onnxruntime-web/dist/ort-wasm-simd.wasm
wget https://cdn.jsdelivr.net/npm/onnxruntime-web/dist/ort-wasm-simd-threaded.wasm
wget https://cdn.jsdelivr.net/npm/@lazycatcloud/lzc-file-pickers@1.3.17/dist/lzc-file-pickers.umd.js
popd

popd
popd

docker build -f Dockerfile -t "${image_tag}" ./nunif/waifu2x/unlimited_waifu2x/
docker push "${image_tag}"
