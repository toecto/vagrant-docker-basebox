#!/bin/bash

if [ -z "$(which docker-project)" ]; then
    cd /tmp
    curl -O -L https://github.com/webreactor/docker-project/releases/download/0.0.3/docker-project
    chmod a+x docker-project
    mv docker-project /usr/local/bin/
fi

echo "docker-project is installed"
