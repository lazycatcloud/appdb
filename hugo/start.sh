#!/bin/bash

if [ ! -f /src/Installed ]; then
	echo "Initializing"
	cd /src
	hugo new site quickstart
	cd quickstart/themes
	tar xzvf /hyde.tar.gz
	cd ..
	hugo new hello.md
	sed -i s/true/false/ content/hello.md
	echo "这是一篇测试文章" >> content/hello.md
	touch /src/Installed
	echo "Initializing done"
fi

cd /src/quickstart
hugo --theme=hyde --baseUrl="https://${APP_ORIGIN}/"

cd public
chmod +x /usr/bin/caddy
caddy file-server --listen :1313

