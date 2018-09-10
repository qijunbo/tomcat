#!/bin/sh
#version=$1
version=jdk8_oracle
if [ -z "${version}" ]; then 
   echo Usage: ${0} version
   exit -1 ;
fi
 
chmod 777 *.sh
docker image build -t tomcat:$1  .
docker images  
