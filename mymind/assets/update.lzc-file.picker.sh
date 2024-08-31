#!/usr/bin/env bash
# leehom Chen clh021@gmail.com
# 本脚本旨在提供一个用于快速编写 shell 脚本模板
set -ex

# 路径准备
OldPath=$(pwd)
SCRIPT_PATH=$(realpath "$0")
ProjectPath="$(dirname "$SCRIPT_PATH")"
# UPDATE_TMP_PATH="$ProjectPath/update_lzc_file_picker_tmp"

pushd "$ProjectPath" > /dev/null
# rm -rf "$UPDATE_TMP_PATH"
# mkdir "$UPDATE_TMP_PATH"
# pushd "$UPDATE_TMP_PATH" > /dev/null

PREFIX=$(npm config get prefix)
# 确保下载到刚刚发布的最新版本
npm i -g --registry https://registry.npmjs.org @lazycatcloud/lzc-file-pickers@latest
LZC_FILE_PICKER_JS="$PREFIX/lib/node_modules/@lazycatcloud/lzc-file-pickers/dist/lzc-file-pickers.umd.js"
cp "$LZC_FILE_PICKER_JS" "$ProjectPath/lzc-file-picker/"
cp "$LZC_FILE_PICKER_JS.map" "$ProjectPath/lzc-file-picker/"

# popd
popd