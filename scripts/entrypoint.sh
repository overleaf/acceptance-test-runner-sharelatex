#! /usr/bin/env bash

/usr/bin/redis-server /etc/redis/redis.conf
service mongodb start

count=1
max_wait=30

while [ $count -le $max_wait ]
do
  if nc -z localhost 27017
  then
    echo "   Connected to mongo"
    cd /app
    exec "$@"
    exit 0
  fi

  sleep 1
  echo "."
  count=$((count+1))
done

echo "   Failed to connect to mongo within $max_wait seconds"
exit 1
