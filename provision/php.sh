#!/bin/bash

add-apt-repository -y ppa:ondrej/php

apt-get -y update
apt-get install -y --no-install-recommends \
    php5.6-cli \
    php5.6-curl \
    php5.6-mcrypt \
    php5.6-mbstring \
    php5.6-json \
    php5.6-curl


echo "php is installed"
