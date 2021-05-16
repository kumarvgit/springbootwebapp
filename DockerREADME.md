## Cheatsheets: https://springframework.guru/docker-cheat-sheet-for-spring-devlopers/
#### Get logs of docker
> docker logs -f <container is>

#### Images are immutable and image is created by fs layers

#### get fs of container
> docker image inspect mongo:3.4.1

#### No Truncation on aoutput
> docker images  --no-trunc

#### Display only ids
> docker images -q --no-trunc

#### Docker tag names convention
> REGISTRYHOSTNAME/USERNAME:VERSION

#### Mapping outside to inside container
> docker run -p27017:27017 -v /home/workstation/Data/mongo_docker:/data/db -d mongo:3.4.1

#### Adding env variable
> docker run --name some-mysql -p 3307:3306 -v /home/workstation/Data/dockerPV/mysql_docker:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=mysqlpwd -d mysql:5.7

#### remove docker image
> docker rmi <image_name>

#### find dangling images
> docker images -f dangling=true


#### Find dangling volumes - when the volume is not associated with a container
> docker volume ls -f dangling=true
> docker volume rm $(docker volume ls -f dangling=true -q)

#### Outside
> docker kill --> issues sigkill to main process
> docker stop --> issues sigterm and the sigkill

#### run an os container and keep alive
> docker run -d centos tail -f /dev/null