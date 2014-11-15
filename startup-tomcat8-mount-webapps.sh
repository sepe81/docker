#!/bin/sh
echo startup sepe/tomcat8-java8 and mount webapps from current workdir
docker run -d -p 8080:8080 --env "CATALINA_OPTS=-Xmx1g -XX:MaxMetaspaceSize=256m" -v $(pwd):/opt/apache-tomcat/webapps sepe/tomcat8-java8 run
