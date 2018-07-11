#!/bin/bash
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install git
#Cloning Sugarizer
git clone https://github.com/llaske/sugarizer
git clone https://github.com/llaske/sugarizer-server

#Docker Install
sudo curl -fsSL https://get.docker.com/ | sh
sudo curl -L "https://github.com/docker/compose/releases/download/1.8.1/docker-compose-$(uname -s)-$(uname -m)" > /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#Starting Server up
cd sugarizer-server
sh generate-docker-compose.sh
docker-compose up -d