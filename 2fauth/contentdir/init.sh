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
if [ -d "$OLD_DATA_DIR" ]; then
    mv "$OLD_DATA_DIR/"* "$NEW_DATA_DIR/"
    echo "[Init] migrate data"
    rm -rf "$OLD_DATA_DIR"
else
    echo "[Init] create data"
fi

if [ $(stat -c '%u' "/2fauth") != "1000" ]; then
    # link: https://docs.2fauth.app/getting-started/installation/docker/docker-cli/#docker-cli-setup
    chown -R 1000:1000 "$NEW_DATA_DIR"
    chmod -R 700 "$NEW_DATA_DIR"
    echo "[Init] chown data"
fi
