FROM sepe/ubuntu-base

MAINTAINER Sebastian Peters <Sebastian.Peters@gmail.com>

RUN wget -nv --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u20-b26/server-jre-8u20-linux-x64.tar.gz -O /tmp/server-jre.tar.gz

# Check the checksum, if it fails, print an error message
RUN echo "659fb0b707d125c05c1e81beb95392cc /tmp/server-jre.tar.gz" | md5sum -c > /dev/null 2>&1 || echo "ERROR: MD5SUM MISMATCH"

RUN tar xzf /tmp/server-jre.tar.gz

# Move to correct location
RUN mkdir -p /usr/lib/jvm
RUN mv jdk1.8.0_20 /usr/lib/jvm/java-8-oracle

# CHANGE OWNERSHIP (default is uucp!)
RUN chown root:root -R /usr/lib/jvm/java-8-oracle

# Cleanup
RUN rm /tmp/server-jre.tar.gz

# Enable environment
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ENV PATH $PATH:$JAVA_HOME/bin