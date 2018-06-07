#!/bin/bash

enable_test=$1

sudo yum install -y yum-utils device-mapper-persistent-data lvm2

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

if [[ -n ${enable_test} && ${enable_test} = "test" ]]; then
	sudo yum-config-manager --enable docker-ce-edge
	sudo yum-config-manager --enable docker-ce-test
else
	sudo yum-config-manager --disable docker-ce-edge
        sudo yum-config-manager --disable docker-ce-test
fi
