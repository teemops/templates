#!/bin/bash
apt-get update
apt-get -y install ruby wget
mkdir /root/codedeploy
cwd /root/codedeploy
wget https://aws-codedeploy-us-west-2.s3.us-west-2.amazonaws.com/latest/install
chmod +x ./install
./install auto

#Installs latest PHP 7 on Ubuntu 18
apt-get -y install php composer mysql-client php-mysql php-gd php-mbstring php-cli php-common php-curl php-intl php-jmespath php-json php-memcache php-mongodb 

#restart code deploy agent
service codedeploy-agent restart