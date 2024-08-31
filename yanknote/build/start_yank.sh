#!/bin/bash
echo $UID
export USER=node
export HOME=/home/node
vncserver -kill :1
vncserver -geometry 1024x768 -depth 24 -p ~/.vnc/passwd -name remote-desktop :1
pwd

cd /home/node/yn/
export DISPLAY=:1
./node_modules/electron/dist/electron --trace-warnings --disable-gpu-sandbox --no-sandbox ./dist/main/app.js & 
caddy reverse-proxy --from :8888 --to :3044 &
# npm run dev -- --host

