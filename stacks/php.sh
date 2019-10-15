#!/bin/bash

TOPS_DEPLOY_ENV=php
#Deploy latest teemops base configuration
bash <(curl -s https://raw.githubusercontent.com/teemops/templates/master/teemdeploy.sh)

#Installs latest PHP 7 on Ubuntu 18
apt-get -y install php composer mysql-client php-mysql php-gd php-mbstring php-cli php-common php-curl php-intl php-jmespath php-json php-memcache php-mongodb 

#Configure Apache correctly
#rewrite on
a2enmod rewrite


