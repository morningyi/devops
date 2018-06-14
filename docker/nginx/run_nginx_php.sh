#!/bin/bash

docker run \
  --name nginx \
  --volume "$PWD/html":/usr/share/nginx/html \
  --volume "$PWD/conf":/etc/nginx \
  --volume "$PWD/log":/var/log/nginx \
  --link php-fpm:phpfpm \
  -p 80:80 \
  -d \
  nginx

