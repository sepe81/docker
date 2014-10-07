FROM sepe/ubuntu-base

MAINTAINER Sebastian Peters <Sebastian.Peters@gmail.com>

RUN wget -nv --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u67-b01/server-jre-7u67-linux-x64.tar.gz -O /tmp/server-jre.tar.gz

# Check the checksum, if it fails, print an error message
RUN echo "f6e81b9be4c1e15d59eb21e564a8973d  /tmp/server-jre.tar.gz" | md5sum -c > /dev/null 2>&1 || echo "ERROR: MD5SUM MISMATCH"

RUN tar xzf /tmp/server-jre.tar.gz

# Move to correct location
RUN mkdir -p /usr/lib/jvm
RUN mv jdk1.7.0_67 /usr/lib/jvm/java-7-oracle

# CHANGE OWNERSHIP (default is uucp!)
RUN chown root:root -R /usr/lib/jvm/java-7-oracle

# Cleanup
RUN rm /tmp/server-jre.tar.gz

# Enable environment
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
ENV PATH $PATH:$JAVA_HOME/bin