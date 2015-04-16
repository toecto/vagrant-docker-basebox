#!/bin/bash

if [ -z "$(which composer)" ]; then
    cd /tmp
    php -r "readfile('https://getcomposer.org/installer');" | php
    mv composer.phar /usr/local/bin/composer
fi

echo "composer is installed"
