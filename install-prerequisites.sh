#!/bin/bash

set -ex

apt update &&\
apt upgrade -y &&\
apt install git curl wget ansible -y

function get-ansible-roles {
    local role="$1"
    ansible-galaxy install --roles-path ./roles/ "${role}"
}

echo -n "download ansible roles"


get-ansible-roles gantsign.atom
get-ansible-roles tonyapuzzo.ansible-role-atom
get-ansible-roles mhalano.visual-studio-code
get-ansible-roles "git+https://github.com/oscpe262/ansible-role-exa.git"
get-ansible-roles "oefenweb.virtualbox"
get-ansible-roles "cmprescott.chrome"
get-ansible-roles "geerlingguy.java"
