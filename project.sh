#!/bin/bash
set -e
if [ "$1" == "" ]; then
    read -p "Enter the project name [symfony]: " PROJECT_NAME
else
    PROJECT_NAME=$1
fi
PROJECT_NAME=${PROJECT_NAME:-symfony}
export PROJECT_NAME
ansible-playbook -i inventory --tags "project" project-playbook.yaml -e 'ansible_python_interpreter=/usr/bin/python3' --ask-become-pass
