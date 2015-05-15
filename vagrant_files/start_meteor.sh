mkdir -p /home/vagrant/swot-bus-station-prototype/.meteor/local/
sudo mount --bind /home/vagrant/swot-bus-station-prototype/.meteor/local/ /var/www/.meteor/local/

sudo chmod -R 777 /var/www/
sudo chmod -R 777 /home/vagrant/swot-bus-station-prototype/

cd /var/www
meteor