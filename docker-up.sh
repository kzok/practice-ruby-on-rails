#!/bin/bash -eu

cd $(dirname $0)

export USER_NAME=$(whoami)
export USER_ID=$(id -u)
export GROUP_ID=$(id -g)
docker-compose down
docker-compose up --build "$@"
