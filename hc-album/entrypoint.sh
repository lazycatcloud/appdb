#!/bin/sh
set -e

# 读取环境变量设置 OR 默认值
# 启动 nginx
nginx -g 'daemon on;'

# exec /fs-server

# 启动系统服务
exec /backend
