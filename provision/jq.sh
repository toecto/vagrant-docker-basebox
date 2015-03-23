#!/bin/bash

if [ -z "$(which jq)" ]; then
    curl -L http://stedolan.github.io/jq/download/linux64/jq > /usr/bin/jq
    chmod a+x /usr/bin/jq
fi

echo "jq is installed"
