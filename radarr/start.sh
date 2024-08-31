#! /bin/bash

mkdir /downloads
cd /downloads

if [ ! -f "/config/config.xml" ]; then
	echo "unzip initialized config"
	unzip /lzcapp/pkg/content/radarr.zip -d /config
fi

mkdir -p /config/aria2
touch /config/aria2/aria2.session
aria2c --conf-path=/lzcapp/pkg/content/aria2.conf &

/app/radarr/bin/Radarr -nobrowser -data=/config
