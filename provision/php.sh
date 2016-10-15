#!/bin/bash

add-apt-repository -y ppa:ondrej/php

apt-get -y update
apt-get install -y --no-install-recommends \
    php5.5-cli \
    php5.5-curl \
    php5.5-mcrypt \
    php5.5-mbstring \
    php5.5-json \
    php5.5-curl


echo "php is installed"
