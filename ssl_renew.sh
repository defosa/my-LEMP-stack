#!/bin/bash

COMPOSE="/root/.docker/cli-plagins/docker-compose --no-ansi"
DOCKER="/usr/bin/docker"

cd ~/wordpress
$COMPOSE run certbot renew --dry-run && $COMPOSE kill -s SIGHUP webserver
$DOCKER system prune -af
