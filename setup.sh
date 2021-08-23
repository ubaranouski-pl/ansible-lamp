#!/bin/bash
set -e
apt install python3-pip -y
pip3 install ansible
. ~/.profile
ansible-playbook -i inventory --skip-tags "project" setup-playbook.yaml -e 'ansible_python_interpreter=/usr/bin/python3'
