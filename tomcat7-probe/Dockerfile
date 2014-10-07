FROM sepe/tomcat7-base

MAINTAINER Sebastian Peters <Sebastian.Peters@gmail.com>

RUN wget --no-check-certificate https://psi-probe.googlecode.com/files/probe-2.3.3.zip -O /tmp/probe.zip

RUN rm -rf /opt/apache-tomcat/webapps/ROOT
RUN rm -rf /opt/apache-tomcat/webapps/docs
RUN rm -rf /opt/apache-tomcat/webapps/examples
RUN rm -rf /opt/apache-tomcat/webapps/host-manager
RUN rm -rf /opt/apache-tomcat/webapps/manager

# deploy war to tomcat
RUN unzip /tmp/probe.zip -x Changelog.txt -d /opt/apache-tomcat/webapps
RUN mv /opt/apache-tomcat/webapps/probe.war /opt/apache-tomcat/webapps/ROOT.war
RUN rm /tmp/probe.zip

EXPOSE 8080

# Start Tomcat in the foreground (run) to make sure docker does not immediately shutdown the container
ENTRYPOINT ["/opt/apache-tomcat/bin/catalina.sh"]
CMD ["run"]