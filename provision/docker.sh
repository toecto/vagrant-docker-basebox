#!/bin/bash

if [ -z "$(which docker)" ]; then
    curl -sSL https://get.docker.com/ubuntu/ | sh
fi

if [ -d "/vagrant" ]; then
    usermod -a -G docker vagrant
fi

echo "docker is installed"
