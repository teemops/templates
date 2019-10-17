#!/bin/bash

#BASE DOCKER INSTALL FOR ALL DOCKER IMAGES
#Deploys all necessary TeemOps related configuration for Teemops Docker Containers
apt-get update
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible

#Install standard ansible playbooks
mkdir /srv/scripts
git clone https://github.com/teemops/templates.git /srv/scripts/templates
cd /srv/scripts/templates

# Run default OS configuration
#ALWAYS ENSURE WE PULL DOWN LATEST TEMPLATE CODE
git pull
#TODO
ansible-playbook base.yml -e "app_env=$TOPS_DEPLOY_ENV"
