#!/bin/sh -l

cd $GITHUB_WORKSPACE

echo $SSH_KEY > private.key
ansible-galaxy install -r $ANSIBLE_GALAXY_FILE
ansible-playbook $*
