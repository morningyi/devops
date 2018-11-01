#!/bin/bash

docker run \
  --name nginx \
  --volume "$PWD/html":/usr/share/nginx/html \
  --volume "$PWD/conf":/etc/nginx \
  --volume "$PWD/logs":/var/log/nginx \
  --link php-fpm:php-fpm-container \
  -p 80:80 \
  -d \
  nginx