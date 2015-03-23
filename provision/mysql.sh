#!/bin/bash

if [ -z "$(which mysql)" ]; then
    apt-get -y install mysql-client

cat > /etc/mysql/conf.d/client.cnf <<- EOM
[client]
protocol=TCP
EOM
fi
echo "mysql client is installed"
