#!/bin/sh
echo startup sepe/tomcat7-probe
docker run -d -p 8080:8080 --env "CATALINA_OPTS=-Xmx1g -XX:MaxPermSize=256m" sepe/tomcat7-probe
