#!/usr/bin/env bash

# Start NGINX

cd ~/ProductionServer/NGINX

docker compose up --build -d

# Start Jenkins
cd ~/ProductionServer/Jenkins

docker compose up -d
