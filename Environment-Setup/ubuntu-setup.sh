#!/bin/bash

# update and install necessary packages
sudo apt update
sudo apt install ssh net-tools git python python3 ansible

# start ssh client and enable the 
sudo systemctl start ssh
sudo systemctl enable ssh

# add devops user as a non-root user
sudo useradd -m -s /bin/bash devops
passwd devops

# add devops to the sudo group
sudo usermod -aG devops sudo

# switch users to devops
su devops

# generate ssh key
ssh-keygen
