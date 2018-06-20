#!/bin/bash

docker run \
  --name mysql_slave \
  -e MYSQL_ROOT_PASSWORD=123456 \
  -p 3307:3306 \
  -v $PWD/conf.slave:/etc/mysql/conf.d \
  -v $PWD/data.slave:/var/lib/mysql \
  -d \
  mysql:5.7