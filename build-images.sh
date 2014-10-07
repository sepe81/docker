#!/bin/bash
cd ubuntu-base
docker build -t sepe/ubuntu-base .

cd ../java7-base
docker build -t sepe/java7-base .

cd ../tomcat7-base
docker build -t sepe/tomcat7-base .

cd ../tomcat7-probe
docker build -t sepe/tomcat7-probe .