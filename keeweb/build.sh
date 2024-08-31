#!/bin/bash

SRCDIR=/home/square/Code/Linakesi/keeweb
cd build
rm -rf src
cp -r $SRCDIR src

docker build . --tag keeweb/release --build-arg COMSHA=`git log --pretty=format:'%h' -n 1`
cd ..
docker run --rm -v ./dist:/dist  keeweb/release:latest bash -c "cp -r /build/dist / && chown -R $UID:$UID /dist"
