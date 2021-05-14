# kontext-docker
A minimal, production-ready KonText installer for Docker

## Usage
To run basic kontext configuration use
```
$ docker-compose up
```

You can add services `mysql` and `ws` to basic configuration like this
```
$ docker-compose -f docker-compose.yml -f docker-compose.ws.yml up
$ docker-compose -f docker-compose.yml -f docker-compose.mysql.yml --env-file .env.mysql up
```
or both
```
$ docker-compose -f docker-compose.yml -f docker-compose.ws.yml -f docker-compose.mysql.yml --env-file .env.mysql up
```
Note that `mysql` service requires additional configuration defined in `.env.mysql` file.

## Settings

You can specify settings using environmental variables

### Basic
- `KONTEXT_CONFIG` - path to kontext config file (default: `./conf/config.default.xml` or `./conf/config.mysql.xml`)

### Websocket service
- `STATUS_SERVICE_URL` - specifies url to websocket service (default - for local use: `ws://localhost:8080/ws/`)

### MySQL service
- `MYSQL_ROOT_PASSWORD` - mysql root password (default: `root-secret`)
- `MYSQL_USER` - mysql user name (default: `kontext`)
- `MYSQL_PASSWORD` - mysql user password (default: `kontext-secret`)