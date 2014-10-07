FROM sepe/java7-base

MAINTAINER Sebastian Peters <Sebastian.Peters@gmail.com>

RUN wget -nv --no-cookies http://mirror.23media.de/apache/tomcat/tomcat-7/v7.0.55/bin/apache-tomcat-7.0.55.tar.gz -O /tmp/apache-tomcat.tar.gz

# Check the checksum, if it fails, print an error message
RUN echo "3c46fc0f608c1280dcd65100a983f285 /tmp/apache-tomcat.tar.gz" | md5sum -c > /dev/null 2>&1 || echo "ERROR: MD5SUM MISMATCH"

RUN tar xzf /tmp/apache-tomcat.tar.gz -C /opt
RUN rm /tmp/apache-tomcat.tar.gz
RUN mv /opt/apache-tomcat-7.0.55 /opt/apache-tomcat

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
