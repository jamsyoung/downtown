#!/bin/bash

# udpate apt and base packages
sudo apt-get update -y
sudo apt-get upgraded -y

# install curl
sudo apt-get install curl

# install php5.x
sudo apt-get install php5-cli php5-fpm php5-common php5-curl php5-xdebug php5-gd php-apc php-pear -y

# PHPillow (not working)
sudo pear channel-discover pear.arbitracker.org
sudo pear install arbit/PHPillow

# HTTP_Request2
sudo pear install HTTP_Request2

# MongoDb
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | sudo tee -a /etc/apt/sources.list.d/10gen.list
sudo apt-get update
sudo apt-get install mongodb-10gen

# Install the PHP MongoDB Driver
sudo pecl install mongo
echo "extension=mongo.so" | sudo tee -a /etc/php5/fpm/conf.d/mongo.ini
