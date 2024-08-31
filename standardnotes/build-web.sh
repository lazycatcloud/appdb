#!/bin/bash

mkdir server app
curl -L https://github.com/standardnotes/server/archive/d406272f070fe6212d71102b1012e967b933f794.tar.gz | tar -zx --strip-components=1 -C server
curl -L https://github.com/standardnotes/app/archive/5a7641c27f3350b3026e85b985d39e0a96200de7.tar.gz | tar -zx --strip-components=1 -C app

docker build . --tag registry.lazycat.cloud/standardnotes_web:0.0.7

