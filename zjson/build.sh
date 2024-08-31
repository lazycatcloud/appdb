#! /bin/bash

docker build . -t zjson:v5.1.4
docker create --name=zjsontemp zjson:v5.1.4
rm -rf ./content
#mkdir ./content
docker cp zjsontemp:/src/build ./content
docker rm zjsontemp
