#!/bin/sh
NAME=hawtio.war
DOWNLOADS="$(dirname "$BASH_SOURCE")"/downloads
WEBAPPS="$(dirname "$BASH_SOURCE")"/webapps

if [ ! -f $DOWNLOADS/$NAME ]; then
	mkdir -v -p $DOWNLOADS
	curl -L -o $DOWNLOADS/$NAME "https://oss.sonatype.org/content/repositories/public/io/hawt/hawtio-default/1.4.46/hawtio-default-1.4.46.war";
fi

mkdir -v -p $WEBAPPS
cp -v $DOWNLOADS/$NAME $WEBAPPS/$NAME
