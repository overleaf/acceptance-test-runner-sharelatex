#! /usr/bin/env bash

/usr/bin/redis-server /etc/redis/redis.conf
service mongodb start

sleep 30

cd /app
exec $1
