#! /usr/bin/env bash

service redis-server start
service mongodb      start

cd /app
npm install

source ./test/acceptance/scripts/full-test.sh

exit 0
