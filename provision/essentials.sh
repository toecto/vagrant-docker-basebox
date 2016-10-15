#!/bin/bash

apt-get -y update
apt-get -y install curl git zip wget make

echo "essential tools are installed"

if [ -d "/vagrant" -a "$(grep 'cd /vagrant' /home/vagrant/.bashrc)" == "" ]; then
     echo "cd /vagrant" >> /home/vagrant/.bashrc
fi

