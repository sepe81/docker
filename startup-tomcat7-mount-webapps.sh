#!/bin/sh
echo startup sepe/tomcat7-base and mount webapps from current workdir
docker run -d -p 8080:8080 --env "CATALINA_OPTS=-Xmx1g -XX:MaxPermSize=256m" -v $(pwd):/opt/apache-tomcat/webapps sepe/tomcat7-base
