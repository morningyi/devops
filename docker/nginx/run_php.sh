#!/bin/bash

docker run \
  --name php-fpm \
  --volume "$PWD/html":/var/www/html \
  --volume "$PWD/php.conf":/usr/local/etc \
  -d \
  --rm \
  php:5.6-fpm