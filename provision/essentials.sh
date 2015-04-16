#!/bin/bash

apt-get -y update
apt-get -y install curl git zip wget

echo "curl git zip wget are installed"

if [ -d "/vagrant" ]; then
     echo "cd /vagrant" > ~/.profile
fi
