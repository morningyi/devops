#!/bin/bash

docker run \
  --name mysql_master \
  -e MYSQL_ROOT_PASSWORD=123456 \
  -p 3306:3306 \
  -v $PWD/conf.master:/etc/mysql/conf.d \
  -v $PWD/data.master:/var/lib/mysql \
  -d \
  mysql:5.7