#!/bin/bash

sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt install docker.io docker-compose -y -qq
sudo usermod -aG docker ${USER} && sudo chmod 777 /var/run/docker.sock
read -p 'Organization name (format org/repo): ' organization
read -p 'Github repo token: ' token
docker build --tag runner-image .
docker run \
  --detach \
  --env ORGANIZATION="$organization" \
  --env ACCESS_TOKEN="$token" \
  --name runner \
  runner-image
docker logs runner -f
