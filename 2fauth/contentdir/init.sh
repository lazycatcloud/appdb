#!/bin/sh
###
# @Author: Bin
# @Date: 2024-10-26
# @FilePath: /appdb/2fauth/contentdir/init.sh
###
set -eu

OLD_DATA_DIR=/lzcapp/run/mnt/home/2fauth
NEW_DATA_DIR=/lzcapp/var/data

mkdir -p "$NEW_DATA_DIR"
# 旧数据文件夹存在
if [ -d "$OLD_DATA_DIR" ]; then
    # 判断新数据是否存在（避免覆盖用户数据）
    if [ ! -f "$NEW_DATA_DIR/installed" ]; then
        mv "$OLD_DATA_DIR/"* "$NEW_DATA_DIR/"
        rm -rf "$OLD_DATA_DIR" || true
        echo "[Init] migrate data"
    else
        echo "[Init] warn ignore migrate data"
    fi
else
    echo "[Init] create new data"
fi

if [ $(stat -c '%u' "/2fauth") != "1000" ]; then
    # link: https://docs.2fauth.app/getting-started/installation/docker/docker-cli/#docker-cli-setup
    chown -R 1000:1000 "$NEW_DATA_DIR"
    chmod -R 700 "$NEW_DATA_DIR"
    echo "[Init] chown data"
fi
