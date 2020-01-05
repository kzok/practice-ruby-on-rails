#!/bin/bash

cd $(dirname $0)

docker-compose down
rm -fr ./tmp
docker-compose up --build -d
