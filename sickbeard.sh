git clone https://github.com/midgetspy/Sick-Beard.git .sickbeard

sudo cp /vagrant/config/sickbeard /etc/default/sickbeard
sudo cp /home/vagrant/.sickbeard/init.ubuntu /etc/init.d/sickbeard
sudo chmod +x /etc/init.d/sickbeard
sudo update-rc.d sickbeard defaults

sudo apt-get install -y python python-cheetah

if [ ! -d /home/vagrant/.pid ]; then
  mkdir /home/vagrant/.pid
fi
chmod -R 777 /home/vagrant/.pid

sudo /etc/init.d/sickbeard start