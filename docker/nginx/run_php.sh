#!/bin/bash

docker run \
-p 9000:9000 \
--name php-fpm \
-v "$PWD/html":/var/www/html \
-d \
--rm \
php:5.6-fpm
