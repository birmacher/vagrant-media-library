sudo apt-get install -y avahi-daemon
sudo apt-get -f install

sudo apt-get install -y avahi-utils
sudo apt-get -f install

wget -nv http://downloads.plexapp.com/plex-media-server/0.9.9.7.429-f80a8d6/plexmediaserver_0.9.9.7.429-f80a8d6_amd64.deb
sudo dpkg -i plexmediaserver_0.9.9.7.429-f80a8d6_amd64.deb
rm -f plexmediaserver_0.9.9.7.429-f80a8d6_amd64.deb

sudo gpasswd -a plex vagrant