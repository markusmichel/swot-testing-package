#!/usr/bin/env bash

sudo apt-get install -y -q curl
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get update

# Install required packages
sudo apt-get install -q -y --no-upgrade \
	git \
	nodejs \
	build-essential


mkdir -p /home/vagrant/swot-bus-station-prototype/.meteor/local/
sudo mount --bind /home/vagrant/swot-bus-station-prototype/.meteor/local/ /var/www/.meteor/local/

cd /var/www
rm -Rf html/
curl https://install.meteor.com/ | sh
#meteor