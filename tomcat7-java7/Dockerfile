FROM sepe/java7-base

MAINTAINER Sebastian Peters <Sebastian.Peters@gmail.com>

# download tomcat as tar.gz
# check the checksum, if it fails, print an error message
# untar, move to correct location and cleanup
RUN wget -nv --no-cookies http://mirror.23media.de/apache/tomcat/tomcat-7/v7.0.56/bin/apache-tomcat-7.0.56.tar.gz \
  -O /tmp/apache-tomcat.tar.gz && \
  echo "2887d0e3ca18bdca63004a0388c99775 /tmp/apache-tomcat.tar.gz" | \
    md5sum -c > /dev/null 2>&1 || echo "ERROR: MD5SUM MISMATCH" && \
  tar xzf /tmp/apache-tomcat.tar.gz -C /opt && \
  mv /opt/apache-tomcat-7.0.56 /opt/apache-tomcat && \
  rm /tmp/apache-tomcat.tar.gz

# configure tomcat user admin/admin for probe access
RUN wget --no-check-certificate https://www.dropbox.com/s/fku4dum4jsa0172/tomcat-users.xml -O /opt/apache-tomcat/conf/tomcat-users.xml

# The following volumes should not be considered part of the image, but contain runtime data
VOLUME ["/opt/apache-tomcat/logs", "/opt/apache-tomcat/work", "/opt/apache-tomcat/temp", "/tmp/hsperfdata_root"]

ENV CATALINA_HOME /opt/apache-tomcat
ENV PATH $PATH:$CATALINA_HOME/bin

EXPOSE 8080

# Start Tomcat in the foreground (run) to make sure docker does not immediately shutdown the container
ENTRYPOINT ["/opt/apache-tomcat/bin/catalina.sh"]
CMD ["configtest"]
