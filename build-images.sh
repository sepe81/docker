#!/bin/sh
cd ubuntu-base
./build.sh

cd ../java7-base
./build.sh

cd ../java8-base
./build.sh

cd ../tomcat7-java7
./build.sh

cd ../tomcat7-java8
./build.sh

cd ../tomcat7-probe
./build.sh

cd ../tomcat8-java7
./build.sh

cd ../tomcat8-java8
./build.sh
