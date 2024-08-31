#!/bin/bash

cd /root
echo $UID
export USER=root
export HOME=/root
vncserver -kill :1
vncserver -geometry 1024x768 -depth 24 -p ~/.vnc/passwd -name remote-desktop :1
pwd

if [ ! -f /root/.config/qBittorrent/qBittorrent.conf ]; then
	mkdir -p /root/.config/qBittorrent
	cp /qBittorrent.conf /root/.config/qBittorrent/qBittorrent.conf
fi

export DISPLAY=:1
qbittorrent


