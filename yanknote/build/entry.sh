#!/bin/bash

# mkdir -p /lzcapp/run/mnt/home/YankNote
chown -R node:node /home/node/yank-note
runuser -u node -- ./start_yank.sh

catch_kill() {
  echo "Caught SIGKILL signal!"
  kill -KILL "$pid" 2>/dev/null
}

trap catch_kill SIGKILL
pid=$$
echo $pid
sleep infinity
