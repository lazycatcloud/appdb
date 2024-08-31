#! /bin/bash

mkdir -p /downloads
cd /downloads

if [ ! -f "/config/config.xml" ]; then
	echo "unzip initialized config"
	unzip /lzcapp/pkg/content/sonarr.zip -d /config
fi

mkdir -p /config/aria2
touch /config/aria2/aria2.session
aria2c --conf-path=/lzcapp/pkg/content/aria2.conf &

cd /app/sonarr/bin
mono --debug Sonarr.exe -nobrowser -data=/config
#/app/radarr/bin/Radarr -nobrowser -data=/config
