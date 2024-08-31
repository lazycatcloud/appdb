#!/bin/bash
rm -rf ./content
docker build --output type=local,dest=$(pwd)/content .
