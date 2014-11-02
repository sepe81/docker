#!/bin/sh
cd ubuntu-base
./build.sh

cd ../java7-base
./build.sh

cd ../java8-base
./build.sh

cd ../tomcat7-base
./build.sh

cd ../tomcat7-probe
./build.sh

cd ../tomcat8-base
./build.sh
