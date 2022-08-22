#!/bin/bash

apt-get update && apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cp -r linux-site-dio-main/* /var/www/html/
