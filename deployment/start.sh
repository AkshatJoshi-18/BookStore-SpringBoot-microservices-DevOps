#!/usr/bin/env bash
cd docker-compose

docker network inspect bookstore-network >/dev/null 2>&1 || docker network create bookstore-network
docker-compose -f infra.yml up -d
docker-compose -f apps.yml up -d
docker-compose -f monitoring.yml up -d