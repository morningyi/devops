#!/bin/bash

docker run \
  --name mysql_slave2 \
  -e MYSQL_ROOT_PASSWORD=123456 \
  -p 3308:3306 \
  -v $PWD/conf.slave2:/etc/mysql/conf.d \
  -v $PWD/data.slave2:/var/lib/mysql \
  -d \
  mysql:5.7