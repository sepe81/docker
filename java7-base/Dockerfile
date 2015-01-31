FROM sepe/ubuntu-base

MAINTAINER Sebastian Peters <Sebastian.Peters@gmail.com>

# download jre as tar.gz
# check the checksum, if it fails, print an error message
# untar, move to correct location
# CHANGE OWNERSHIP (default is uucp!)
# Cleanup
RUN wget -nv --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" \
  http://download.oracle.com/otn-pub/java/jdk/7u67-b01/server-jre-7u67-linux-x64.tar.gz -O /tmp/server-jre.tar.gz && \
  echo "f6e81b9be4c1e15d59eb21e564a8973d /tmp/server-jre.tar.gz" | \
    md5sum -c > /dev/null 2>&1 || echo "ERROR: MD5SUM MISMATCH" && \
  tar xzf /tmp/server-jre.tar.gz && \
  mkdir -p /usr/lib/jvm && mv jdk1.7.0_67 /usr/lib/jvm/java-7-oracle && \
  chown root:root -R /usr/lib/jvm/java-7-oracle && \
  rm /tmp/server-jre.tar.gz

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
ENV PATH $PATH:$JAVA_HOME/bin
