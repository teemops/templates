#!/bin/bash

#BASE DOCKER INSTALL FOR ALL DOCKER IMAGES
#Deploys all necessary TeemOps related configuration for Teemops Docker Containers
apt-get update
apt-get -y install software-properties-common build-essential
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible

#Install NVM Build tools as standard
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completio
nvm install node
nvm install --lts
nvm install 8.10.0
nvm ls
nvm use node

#Install standard ansible playbooks
mkdir /srv/scripts
git clone https://github.com/teemops/templates.git /srv/scripts/templates
cd /srv/scripts/templates

# Run default OS configuration
#ALWAYS ENSURE WE PULL DOWN LATEST TEMPLATE CODE
git pull
#TODO
ansible-playbook base.yml -e "app_env=$TOPS_DEPLOY_ENV"
