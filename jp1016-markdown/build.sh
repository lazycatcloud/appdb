#!/usr/bin/env bash

set -ex

name='jp1016-markdown'
commit_hash='7a3a4992a33c566250f98c2ce9ffdfedb64d0cc3'
clone_url="git@gitee.com:linakesi/${name}.git"
dist_path="${name}/dist/notes"
image="registry.lazycat.cloud/appdb/${name}"
image_version='v0.0.2'
image_tag="${image}:${image_version}"

font_awesome_path='font-awesome/4.0.3/css'
lzc_file_picker_path='lzc-file-pickers/1.3.6'
tailwindcss_path='tailwindcss/1.1.2'

git clone ${clone_url}
pushd "${name}"
git checkout "${commit_hash}"
npm ci
npm run build
popd

pushd "${dist_path}/assets"
mkdir -p "${font_awesome_path}"
wget -O "${font_awesome_path}/font_awesome.css" \
	"https://netdna.bootstrapcdn.com/${font_awesome_path}/font_awesome.css"
mkdir -p "${lzc_file_picker_path}"
wget -O "${lzc_file_picker_path}/lzc-file-pickers.umd.js" \
	"https://cdn.jsdelivr.net/npm/@lazycatcloud/lzc-file-pickers@1.3.6/dist/lzc_file_pickers.umd.js"
mkdir -p "${tailwindcss_path}"
wget -O "${tailwindcss_path}/base.min.css" \
	"https://https://cdnjs.cloudflare.com/ajax/libs/${tailwindcss_path}/base.min.css"
wget -O "${tailwindcss_path}/components.min.css" \
	"https://https://cdnjs.cloudflare.com/ajax/libs/${tailwindcss_path}/components.min.css"
wget -O "${tailwindcss_path}/utilities.min.css" \
	"https://https://cdnjs.cloudflare.com/ajax/libs/${tailwindcss_path}/utilities.min.css"
wget -O navbar-brand.png https://i.imgur.com/AWm93ID.png
popd

docker build \
	-f Dockerfile \
	-t "${image_tag}" \
	--build-arg "src_path=${dist_path}" \
	.
docker push "${image_tag}"
