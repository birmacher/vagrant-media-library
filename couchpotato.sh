sudo apt-get -y update
sudo apt-get install -y git-core

git clone https://github.com/RuudBurger/CouchPotatoServer.git .couchpotato

sudo cp /home/vagrant/.couchpotato/init/ubuntu /etc/init.d/couchpotato
sudo cp /vagrant/config/couchpotato /etc/default/couchpotato 
sudo chmod +x /etc/init.d/couchpotato

mkdir /home/vagrant/.pid
chmod -R 700 /home/vagrant/.pid

sudo update-rc.d couchpotato defaults

/etc/init.d/couchpotato start