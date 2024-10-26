#!/bin/sh
###
 # @Author: Bin
 # @Date: 2024-10-26
 # @FilePath: /appdb/2fauth/contentdir/init.sh
### 
set -eu

mkdir -p /lzcapp/run/mnt/home/2fauth

# link: https://docs.2fauth.app/getting-started/installation/docker/docker-cli/#docker-cli-setup
chown -R 1000:1000 /lzcapp/run/mnt/home/2fauth
chmod -R 700 /lzcapp/run/mnt/home/2fauth
