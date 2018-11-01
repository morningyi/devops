#!/bin/bash

docker run \
  --name mongo \
  -p 27017:27017 \
  -v $PWD/db:/data/db \
  -d \
  mongo:3.2