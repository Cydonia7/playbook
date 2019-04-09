#!/bin/sh

export ANSIBLE_VERSION=2.7.10
export PATH="$HOME/.local/bin:$PATH"

pip install --user virtualenv
virtualenv venv
. venv/bin/activate

pip install ansible==$ANSIBLE_VERSION
ansible-playbook --ask-become-pass -i inventory.ini playbook.yml
