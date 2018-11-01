#!/bin/bash

docker run \
--name tomcat \
-p 8080:8080 \
--volume "$PWD/conf":"/usr/local/tomcat/conf" \
--volume "$PWD/webapps":"/usr/local/tomcat/webapps" \
-d \
tomcat
