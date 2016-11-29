#! /usr/bin/env bash

/usr/bin/redis-server /etc/redis/redis.conf
service mongodb start

cd /app
exec $1
