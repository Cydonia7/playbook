#!/bin/sh

export ANSIBLE_VERSION=2.7.10
export PATH="$HOME/.local/bin:$PATH"

pip install --user virtualenv
virtualenv venv
. venv/bin/activate

wget -N https://networkgenomics.com/try/mitogen-0.2.6.tar.gz
tar xf mitogen-0.2.6.tar.gz

pip install ansible==$ANSIBLE_VERSION
ansible-playbook --ask-become-pass -i inventory.ini playbook.yml
