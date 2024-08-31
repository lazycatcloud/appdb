#! /bin/bash


if [ ! -f "/config/config.xml" ]; then
	echo "unzip initialized config"
	unzip /lzcapp/pkg/content/data.zip -d /config
fi

/app/prowlarr/bin/Prowlarr -nobrowser -data=/config
