#!/bin/sh
set -e

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
  set -- apache2-foreground "$@"
fi

set -x
data_dir=${DATA_DIR:-/var/www/html/data}
# 检查目录是否存在
if [ ! -d "$data_dir" ]; then
  echo "目录 $data_dir 不存在"
else
  chmod 777 "$data_dir"
fi

exec "$@"