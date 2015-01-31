# Introduction
A bunch of java-centric dockerfiles for creating various base images.

# Usage
```
git clone https://github.com/sepe81/docker.git docker-sepe
cd docker-sepe
chmod +x build-images.sh
./build-images.sh
```

# Fugu
Use [fugu wrapper](https://github.com/mattes/fugu) as an alternative docker runner.

```
# download deployable WAR into current directory (e.g. as ROOT.war)
fugu run -v `pwd`:/opt/apache-tomcat/webapps
```
