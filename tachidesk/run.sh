#!/usr/bin/env bash

if [ ! -L "/lzcapp/var/local" ]; then
  ln -s ../run/mnt/home/tachidesk /lzcapp/var/local
fi

java -Dsuwayomi.tachidesk.config.server.rootDir=/lzcapp/var \
	-jar /opt/Tachidesk-Server.jar
