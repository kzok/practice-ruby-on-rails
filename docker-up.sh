#!/bin/bash -eu

cd $(dirname $0)

docker-compose down
docker-compose up --build "$@"
