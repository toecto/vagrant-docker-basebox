#!/bin/bash

if [ -z "$(which decking)" ]; then
    cd /opt/
    curl -LO https://github.com/meetfinch/decking/archive/v0.4.0.zip
    unzip ./v0.4.0.zip
    cd /opt/decking-0.4.0/
    npm install -g
fi

echo "decking is installed"
