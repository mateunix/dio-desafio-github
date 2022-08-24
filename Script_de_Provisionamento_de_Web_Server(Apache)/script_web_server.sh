#!/bin/bash

#Updating the server
echo 'Updating Server...'
apt-get update && apt-get upgrade -y

#Instaling packages
echo 'Downloading and Installing necessary packages....'
apt-get install apache2 unzip -y

#Getting the application on github
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
