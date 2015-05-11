#!/usr/bin/env bash

sudo apt-get install -y -q curl
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
sudo apt-get update

# Install required packages
sudo apt-get install -q -y --no-upgrade \
	git \
	nodejs \
	build-essential

sudo npm update -g npm

cd /var/www
rm -Rf html/
sudo npm install
sudo npm install sqlite3
#sudo npm install -g nodemon
#sudo npm start &