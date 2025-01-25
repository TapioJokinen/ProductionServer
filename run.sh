#!/usr/bin/env bash

# Start Jenkins
cd ~/ProductionServer/Jenkins

docker compose up -d

# Start NGINX

cd ~/ProductionServer/NGINX

docker compose up --build -d
