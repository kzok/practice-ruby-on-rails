#!/bin/bash -eu

cd $(dirname $0)

docker-compose exec rails //bin/bash
