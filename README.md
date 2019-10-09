# Docker in Docker example

Quick example of how calling docker inside docker containers, using a master-services approach.

## Setup
1. https://docs.docker.com/compose/install/
1. `$ ./script/setup.sh` will build the service1 (`daa_service1`) and service2 (`daa_service2`) containers. Both are very simple golang applications.

## Status check
You will able to access both of them by the master container:

`$ docker-compose run master docker ps -a`

```
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                  PORTS               NAMES
2e3e5fcdb7dd        docker              "docker-entrypoint.s…"   1 second ago        Up Less than a second                       dinler_master_run_d9c40778c035
4b734de5a686        dinler_service2     "tail -f /dev/null"      3 minutes ago       Up 3 minutes                                daa_service2
38b92d6523db        dinler_service1     "tail -f /dev/null"      3 minutes ago       Up 3 minutes                                daa_service1
```

## Running services

You can call the binaries for each one of the services from master as well:

`$ ./script/run_service1.sh` or `$ docker-compose run master docker exec -it daa_service1 /service1`:

```2019/10/09 04:37:28 Hello from Service 1!```

`$ ./script/run_service2.sh` or `$ docker-compose run master docker exec -it daa_service2 /service2`:

```2019/10/09 04:37:28 Hello from Service 2!```
