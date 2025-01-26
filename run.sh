#!/usr/bin/env bash

set -e

cd ~/ProductionServer/NGINX

docker compose up --build -d

cd ~/ProductionServer/Jenkins

docker compose up -d

JENKINS_IP=$(sudo docker inspect $(sudo docker ps | grep jenkins_docker | awk '{print $1}') | jq -r '.[0].NetworkSettings.Networks[].IPAddress')

sudo ufw deny from all to 22

sudo ufw allow from 192.168.0.0/24 to 22

sudo ufw allow from "$JENKINS_IP" to 22
