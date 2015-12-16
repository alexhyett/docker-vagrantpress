# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "trusty64"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  
  # setup virtual hostname and provision local IP
  config.vm.hostname = "docker.dev"
  config.vm.network :private_network, :ip => "192.168.50.4"
  config.hostsupdater.aliases = %w{www.docker.dev}
  config.hostsupdater.remove_on_suspend = true

  config.vm.provision :docker
  config.vm.provision :docker_compose, yml: "/vagrant/compose-prod.yml", run: "always"
  
  # Fix for slow external network connections
  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    vb.customize ['modifyvm', :id, '--natdnsproxy1', 'on']
  end
end
