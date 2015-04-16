#!/bin/bash

if [ -z "$(which node)" ]; then
    apt-get -y install npm
    npm config set registry http://registry.npmjs.org/
    npm install -g n
    n stable
fi

echo "node is installed"
