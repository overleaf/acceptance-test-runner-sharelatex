#! /usr/bin/env bash
service redis-server start
service mongodb      start

cd /app
exec $1
