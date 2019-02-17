# docker scripts

## Introduction

A bunch of java-centric dockerfiles for creating various base images and docker aliases.

## Usage

### Build images

```sh
git clone https://github.com/sepe81/docker.git docker-sepe
cd docker-sepe
./build-images.sh
```

### Run images with docker run

```sh
# download deployable WAR into current directory (e.g. hawtio.war)
./prepare-hawtio.sh

# run sepe/tomcat8-java8 and mount local webapps
./startup-sepe-tomcat8-mount-webapps.sh

# undeploy hawtio
rm -rf webapps/hawtio webapps/hawtio.war

# redeploy (cached) hawtio from local downloads
./prepare-hawtio.sh
```

### Run images with fugu

Use [fugu wrapper](https://github.com/mattes/fugu) as an alternative docker runner.

```sh
# run configured container from fugu.yml and mount local webapps
fugu run -v `pwd`/webapps:/opt/apache-tomcat/webapps
```
