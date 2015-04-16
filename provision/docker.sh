#!/bin/bash

if [ -f "/usr/local/share/ca-certificates/ca.xcomdb.ru.crt" ]; then
    curl img.xcomdb.ru/dev/ca.xcomdb.ru.crt > /usr/local/share/ca-certificates/ca.xcomdb.ru.crt
    apt-get install ca-certificates
fi

if [ -z "$(which docker)" ]; then
    curl -sSL https://get.docker.com/ubuntu/ | sh
fi

if [ -d "/vagrant" ]; then
    usermod -a -G docker vagrant
fi

echo "docker is installed"