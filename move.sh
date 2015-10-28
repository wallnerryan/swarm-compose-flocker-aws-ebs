#!/bin/sh

docker-compose -f compose.yml kill
echo 'y' | docker-compose -f compose.yml rm
docker-compose -f compose-moved.yml up -d

