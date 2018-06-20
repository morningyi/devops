#!/bin/bash

docker run \
  --name mysql \
  -e MYSQL_ROOT_PASSWORD=123456 \
  -p 3306:3306 \
  -v $PWD/conf:/etc/mysql/conf.d \
  -v $PWD/data:/var/lib/mysql \
  -d \
  mysql:5.7