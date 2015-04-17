#!/bin/bash

if [ -z "$(which docker-compose)" ]; then
    curl -L https://github.com/docker/compose/releases/download/1.1.0/docker-compose-`uname -s`-`uname -m` \
    > /usr/local/bin/docker-compose
    chmod a+x /usr/local/bin/docker-compose
fi

echo "docker-compose is installed"