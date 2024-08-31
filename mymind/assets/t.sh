#!/usr/bin/env bash
# leehom Chen clh021@gmail.com
# 本脚本旨在提供一个用于快速编写 shell 脚本模板
set -e
if [ ! -d "./node_modules" ]; then
  mv ../node_modules .
else
  echo "node_modules already exists"
  rm -rf ../node_modules
fi

make my-mind.js

pwd
mv node_modules ../

cd ../; lzc.test.sh -t; cd assets
