#!/usr/bin/env bash

set -e

cd ~/ProductionServer/NGINX

docker compose up --build -d

cd ~/ProductionServer/Jenkins

docker compose up -d
