#!/usr/bin/env bash
cd docker-compose

docker-compose -f apps.yml down
docker-compose -f infra.yml down
docker-compose -f monitoring.yml down
