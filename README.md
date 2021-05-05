# kontext-docker
A minimal, production-ready KonText installer for Docker

## Usage
To run kontext with websocket api use
```
$ docker-compose --env-file .env.ws up
```
or without websocket api use
```
$ docker-compose up --scale ws=0
```