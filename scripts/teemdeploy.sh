#!/bin/bash

#Deploys all necessary TeemOps related configuration for Teemops Managed EC2 instances
apt-get update
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible

#AWS Code Deploy Agent
apt-get -y install ruby wget
mkdir /root/codedeploy
cwd /root/codedeploy
wget https://aws-codedeploy-us-west-2.s3.us-west-2.amazonaws.com/latest/install
chmod +x ./install
./install auto

#restart code deploy agent
service codedeploy-agent restart

#Install standard ansible playbooks
mkdir /srv
mkdir /srv/scripts
git clone https://github.com/teemops/templates.git /srv/scripts/templates
cd /srv/scripts/templates

# Run default OS configuration
#TODO
ansible-playbook base.yml -e "app_env=$TOPS_DEPLOY_ENV"
