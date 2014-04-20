sudo apt-get install python-software-properties

sudo apt-get -y update
sudo apt-get -y install transmission-cli transmission-common transmission-daemon

sudo usermod -a -G debian-transmission vagrant
sudo chown -R debian-transmission:debian-transmission /media/library
sudo chmod -R 775 /media/library

sudo /etc/init.d/transmission-daemon stop
sudo service transmission-daemon stop
sudo cp /vagrant/config/transmission.json /etc/transmission-daemon/settings.json
sudo /etc/init.d/transmission-daemon start