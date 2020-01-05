#!/bin/bash

cd $(dirname $0)

export UID=$(id -u)
export GID=$(id -g)
docker-compose down
docker-compose up --build -d
