#!/bin/bash
set -e
export PROJECT_NAME=${1:-symfony}
ANSIBLE_CONFIG=/etc/ansible/ansible.cfg
apt install python3-pip -y
apt remove ansible -y
pip3 install ansible
. ~/.profile
grep -qF 'interpreter_python=' $ANSIBLE_CONFIG || sed -i '/^\[defaults\]/a\interpreter_python=\/usr\/bin\/python3' $ANSIBLE_CONFIG
ansible-playbook -i inventory playbook.yaml
