#!/usr/bin/env bash
# leehom Chen clh021@gmail.com
# 源码编译得到二进制打包
set -e

# 路径准备
OldPath=$(pwd)
# SCRIPT_PATH=$(realpath "${BASH_SOURCE[0]}")
SCRIPT_PATH=$(realpath "$0")
ProjectPath="$(dirname "$SCRIPT_PATH")"

pushd "$ProjectPath" >/dev/null

# 编译前端项目
cd "$ProjectPath/memos/web"
yarn && yarn build

# 拷贝前端项目到后端资源目录
cd "$ProjectPath/memos/"
cp -r web/dist ./server/

# 编译后端项目，生成二进制程序
cd "$ProjectPath/memos/"
mkdir -p "$ProjectPath/bin"
go build -o "$ProjectPath/bin/memos" ./main.go

# build images
cd "$ProjectPath/"
docker build -t registry.lazycat.cloud/memos:0.11.2.3 .

popd >/dev/null

cd "$OldPath"

