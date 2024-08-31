#!/usr/bin/env bash
# leehom Chen clh021@gmail.com

# BUILD
# git clone --depth=1 git@github.com:clh021/ChineseSubFinder.git srv

# 以下操作需要手动执行

# browser 目录挂载为解决 容器重启后无需再次下载 chrome，除非 go-rod 更新
docker run -it --rm \
	--name chinesesubfinder \
	-v ./config:/config \
	-v ./media:/media \
	-v ./browser:/root/.cache/rod/browser \
	-v ./contentdir/lite-entrypoint.sh:/usr/bin/entrypoint.sh \
	-v ./srv:/srv \
	-e GODEBUG=inittrace=1 \
	-e PUID=1000 \
	-e PGID=1000 \
	-e PERMS=true \
	-e TZ=Asia/Shanghai \
	-e UMASK=022 \
	-p 19035:19035 \
	-p 19037:19037 \
	allanpk716/chinesesubfinder:v0.54.4

# docker exec -it chinesesubfinder bash
# cd srv || exit
# bash docker/lite-make.sh
