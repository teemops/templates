#!/bin/bash
TEMPLATE_NAME=$1
ansible-playbook launch.yml -e "template_name=$TEMPLATE_NAME"