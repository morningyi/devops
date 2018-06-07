#!/bin/bash

version=$1

if [ -z ${version} ]; then
	sudo yum install docker-ce
else
	echo sudo yum install docker-ce-${version}
	sudo yum install docker-ce-${version}	
fi

