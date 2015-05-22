#!/bin/sh
IMAGE=podbox/tomcat8
PORT=8080
echo startup $IMAGE on port $PORT and mount webapps
docker run -d -p $PORT:8080 -v `pwd`/webapps:/apache-tomcat/webapps $IMAGE
