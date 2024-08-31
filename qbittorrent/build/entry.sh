#!/bin/bash

./start.sh &

catch_kill() {
  echo "Caught SIGKILL signal!"
  kill -KILL "$pid" 2>/dev/null
}

trap catch_kill SIGKILL
pid=$$
echo $pid
sleep infinity
