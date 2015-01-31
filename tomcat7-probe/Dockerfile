FROM sepe/tomcat7-java7

MAINTAINER Sebastian Peters <Sebastian.Peters@gmail.com>

# download probe zip, remove default webapps from tomcat, unzip and deploy war as ROOT context and cleanup
RUN wget --no-check-certificate https://psi-probe.googlecode.com/files/probe-2.3.3.zip -O /tmp/probe.zip && \
  rm -rf /opt/apache-tomcat/webapps/ROOT && \
  rm -rf /opt/apache-tomcat/webapps/docs && \
  rm -rf /opt/apache-tomcat/webapps/examples && \
  rm -rf /opt/apache-tomcat/webapps/host-manager && \
  rm -rf /opt/apache-tomcat/webapps/manager && \
  unzip /tmp/probe.zip -x Changelog.txt -d /opt/apache-tomcat/webapps && \
  mv /opt/apache-tomcat/webapps/probe.war /opt/apache-tomcat/webapps/ROOT.war && \
  rm /tmp/probe.zip

EXPOSE 8080

# Start Tomcat in the foreground (run) to make sure docker does not immediately shutdown the container
ENTRYPOINT ["/opt/apache-tomcat/bin/catalina.sh"]
CMD ["run"]
