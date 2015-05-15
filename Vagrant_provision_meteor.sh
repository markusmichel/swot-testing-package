#!/usr/bin/env bash

sudo apt-get install -y -q curl
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get update

# Install required packages
sudo apt-get install -q -y --no-upgrade \
	git \
	nodejs \
	build-essential

sleep 5

mkdir -p /home/vagrant/swot-bus-station-prototype/.meteor/local/
sudo mount --bind /home/vagrant/swot-bus-station-prototype/.meteor/local/ /var/www/.meteor/local/

sudo chmod -R 777 /var/www/
sudo chmod -R 777 /home/vagrant/swot-bus-station-prototype/

mkdir -p /home/vagrant/swot-bus-station-prototype/.meteor/local/
sudo mount --bind /home/vagrant/swot-bus-station-prototype/.meteor/local/ /var/www/.meteor/local/

sudo chmod -R 777 /var/www/
sudo chmod -R 777 /home/vagrant/swot-bus-station-prototype/

cd /var/www
rm -Rf html/
curl https://install.meteor.com/ | sh
#meteor 0<&- &>/dev/null &