#!/bin/sh

rm -rf ./content

mkdir ./content

cd ui
npm run build
cd -
mv ./ui/dist ./content/dist

cd backend
CGO_ENABLED=0 go build -a -ldflags '-extldflags "-static"' .
cd -
mv ./backend/collabora ./content/backend
cp -r ./backend/resourses ./content/
