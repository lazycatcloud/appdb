#! /bin/bash


if [ ! -f "/config/config/config.ini" ]; then
	echo "unzip initialized config"
	unzip /lzcapp/pkg/content/data.zip -d /config
fi

python3 /app/bazarr/bin/bazarr.py --no-update --config /config
