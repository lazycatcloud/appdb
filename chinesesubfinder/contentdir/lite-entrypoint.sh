#!/bin/bash

## 重设权限
chown -R "${PUID}:${PGID}" /config
if [[ ${PERMS} == true ]]; then
	echo "已设置 PERMS=true，重设 '/media' 目录权限为 ${PUID}:${PGID} 所有（媒体文件多，花的时间也多，耐心等）..."
	chown -R ${PUID}:${PGID} /media
fi

## 兼容旧的缓存目录
if [[ -d /app/cache ]]; then
	echo "检测到映射了 '/app/cache'，创建软连接 '/config/cache' -> '/app/cache'（如果原有缓存多，花的时间也多，耐心等）"
	chown -R ${PUID}:${PGID} /app
	if [[ -L /config/cache && $(readlink -f /config/cache) != /app/cache ]]; then
		rm -rf /config/cache &>/dev/null
	fi
	if [[ ! -e /config/cache ]]; then
		su-exec ${PUID}:${PGID} ln -sf /app/cache /config/cache
	fi
else
	if [[ -L /config/cache ]]; then
		echo "检测到 '/config/cache' 指向了不存在的目录 '/app/cache'，删除之，如想保留缓存，请将旧的 'cache' 目录移动到 '/config' 路径下..."
		rm -rf /config/cache &>/dev/null
	fi
fi

umask ${UMASK:-022}
cd /config || exit
echo "启动程序中……"
# exec su-exec "${PUID}:${PGID}" whoami
# exec su-exec "${PUID}:${PGID}" chinesesubfinder
# whoami
sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
echo "启动程序中2……"
apk add strace
apk add go
apk add g++
echo "启动程序中4……"
export GOPROXY=https://goproxy.cn,direct
export CGO_ENABLED=1
export GO111MODULE=on
go install github.com/go-delve/delve/cmd/dlv@latest
echo "启动程序中5……"
ls -lah /root/go/bin/dlv
go version
# apk add dlv
echo "启动程序中6……"
cd /srv || exit
go mod tidy

# /root/go/bin/dlv exec --allow-non-terminal-interactive=true /usr/bin/chinesesubfinder

echo "初始化步骤结束……开干！"
sleep 9999999
