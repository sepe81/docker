FROM sepe/ubuntu-base

MAINTAINER Sebastian Peters <Sebastian.Peters@gmail.com>

# download jre as tar.gz
# check the checksum, if it fails, print an error message
# untar, move to correct location
# CHANGE OWNERSHIP (default is uucp!)
# Cleanup
RUN wget -nv --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" \
  http://download.oracle.com/otn-pub/java/jdk/8u20-b26/server-jre-8u20-linux-x64.tar.gz -O /tmp/server-jre.tar.gz && \
  echo "659fb0b707d125c05c1e81beb95392cc /tmp/server-jre.tar.gz" | \
    md5sum -c > /dev/null 2>&1 || echo "ERROR: MD5SUM MISMATCH" && \
  tar xzf /tmp/server-jre.tar.gz && \
  mkdir -p /usr/lib/jvm && mv jdk1.8.0_20 /usr/lib/jvm/java-8-oracle && \
  chown root:root -R /usr/lib/jvm/java-8-oracle && \
  rm /tmp/server-jre.tar.gz

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ENV PATH $PATH:$JAVA_HOME/bin
