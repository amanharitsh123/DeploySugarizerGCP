#!/bin/bash
apt-get -y update
apt-get -y upgrade

#Cloning Sugarizer
git clone https://github.com/llaske/sugarizer
git clone https://github.com/llaske/sugarizer-server

#Docker Install
curl -fsSL https://get.docker.com/ | sh
curl -L "https://github.com/docker/compose/releases/download/1.8.1/docker-compose-$(uname -s)-$(uname -m)" > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

#Starting Server up
cd sugarizer-server
sh generate-docker-compose.sh
docker-compose up -d