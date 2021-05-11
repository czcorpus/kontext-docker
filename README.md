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

If you prefer kontext using mysql database use
```
$ docker-compose -f docker-compose.mysql.yml --env-file .env.ws up
```
or
```
$ docker-compose -f docker-compose.mysql.yml up --scale ws=0
```
instead