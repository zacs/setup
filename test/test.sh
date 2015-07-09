#!/bin/sh
set -ex
ansible-playbook local.yml -i hosts --ask-sudo-pass --connection=local
