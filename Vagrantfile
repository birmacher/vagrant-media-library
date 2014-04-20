# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/ubuntu-13.10"

  config.vm.network "forwarded_port", guest: 443, host: 4043    # Git
  config.vm.network "forwarded_port", guest: 32400, host: 32400 # Plex
  config.vm.network "forwarded_port", guest: 9091, host: 9091   # Transmission
  config.vm.network "forwarded_port", guest: 51413, host: 51413
  config.vm.network "forwarded_port", guest: 5050, host: 5050   # Couchpotato
  config.vm.network "forwarded_port", guest: 8081, host: 8081   # Sickbeard

  config.vm.synced_folder ENV["MEDIA_LIBRARY"], "/media/library", create: true


  config.vm.provider "virtualbox" do |vb|
    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "4096"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  config.vm.provision :shell, :path => "plex.sh"
  config.vm.provision :shell, :path => "transmission.sh"
  config.vm.provision :shell, :path => "couchpotato.sh"
  config.vm.provision :shell, :path => "sickbeard.sh"
end
