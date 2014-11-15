# inspired from http://www.kartar.net/2014/03/some-useful-docker-bash-functions-and-aliases/

alias dki="docker images";
alias dkps="docker ps -a";

# stop all containers
alias dkstopa="docker ps -q | xargs docker stop";

# remove all exited containers
dkrme() {
	docker ps -a | grep Exit | awk '{print $1}' | xargs docker rm;
};

# removes all non-running containers
dkrm() { docker rm $(docker ps -q -a) };

# remove images labeled "<none>"
dkrmi() {
	docker rmi $(docker images | grep "^<none>" | awk '{print $3}');
};

# Getting the IP address
alias dkip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'";