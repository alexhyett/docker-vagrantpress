# docker-vagrantpress

This a wordpress development environment which uses Docker inside a Vagrant VM.

I have created this mainly to see how Docker works and to try and get something faster than my current [Vagrant + Puppet setup](https://github.com/hyettdotme/vagrantpress)

# Prerequisites 
+ [Vagrant](http://www.vagrantup.com/downloads.html)
+ [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
+ [Vagrant Hostsupdater](https://github.com/cogitatio/vagrant-hostsupdater)
+ [Vagrant-Docker-Compose](https://github.com/leighmcculloch/vagrant-docker-compose)

## Getting started

1. Clone the project.  (There’s only master branch.)
2. Run `vagrant plugin install vagrant-hostsupdater` from command line
3. Run `vagrant plugin install vagrant-docker-compose` from command line
4. Run the command `vagrant up` from the directory
5. Open your browser to http://www.docker.dev and go through the WordPress installation wizard

A src folder will be created by docker which contains a plugins and themes folder which can be used for development.