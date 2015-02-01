#!/bin/sh
IMAGE=sepe/tomcat8-java8
PORT=8080
echo startup $IMAGE on port $PORT and mount webapps
docker run -d -p $PORT:8080 --env "CATALINA_OPTS=-Xmx1g -XX:MaxMetaspaceSize=256m" -v $(pwd)/webapps:/opt/apache-tomcat/webapps $IMAGE run
