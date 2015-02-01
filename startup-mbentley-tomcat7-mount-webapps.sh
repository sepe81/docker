#!/bin/sh
IMAGE=mbentley/tomcat7-oracle
PORT=8080
echo startup $IMAGE on port $PORT and mount webapps
docker run -d -p $PORT:8080 -v `pwd`/webapps:/opt/tomcat/webapps $IMAGE
