FROM ubuntu:14.04

MAINTAINER Sebastian Peters <Sebastian.Peters@gmail.com>

RUN apt-get update && apt-get -y install unzip wget && rm -rf /var/lib/apt/lists/*

RUN echo "Europe/Berlin" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
