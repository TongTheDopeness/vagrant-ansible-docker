#!/usr/bin/env bash

set -eux

if ! [ `which ansible` ]; then
    apt-get update -y
    apt-get install -y ansible
fi

if ! [ `which docker` ]; then
    cp -f /vagrant/ansible/docker.list /etc/apt/sources.list.d/
    apt-get update -y
    apt-get install -y linux-image-generic-lts-trusty
fi

ansible-playbook -i /vagrant/ansible/host /vagrant/ansible/playbook.yml
