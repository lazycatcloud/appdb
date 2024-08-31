#!/bin/bash
#
cd /var/lib/redis
redis-server /etc/redis/redis.conf &

cd /LANraragi
npm start
