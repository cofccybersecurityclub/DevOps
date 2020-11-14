# COFC DevOPS: Setup

## Goals:

1. Set up 3 virtual machines
    - 1 Ubuntu (Command Machine)
    - 2 CentOS "webservers"
2. Set up an non-root user that is a part of the `wheel` group on our webservers

## Prerequisites:

1. [VirtualBox](https://www.virtualbox.org/)
2. ISOs:
    - [Ubuntu 20.04 Minimal](https://releases.ubuntu.com/20.04.1/ubuntu-20.04.1-live-server-amd64.iso?_ga=2.154606776.143673684.1605395134-1815728291.1605395134)
    - [CentOS 8 Minimal](http://mirror.oss.ou.edu/centos/8.2.2004/isos/x86_64/CentOS-8.2.2004-x86_64-minimal.iso)

## Configuration Steps:

1. Download Virtualbox
2. Download ISOs
3. Launch Virtualbox and create a VM
4. We will want to have the following configurations for our VMs:
    - 16 GB of storage per VM 
    - 1024 MB of RAM per VM
    - Network will be set to NAT
5. We will set up the Ubuntu Server first and then the CentOS Servers
6. Some notes for the Ubuntu Server:
    - We will need to check to see if the following packages are installed:
        - `ssh`
        - `git`
        - `ansible`
        - `net-tools`
    - We will need to start the SSH service and enable it on startup: `sudo systemctl start ssh; sudo systemctl enable ssh`
    - We will need to create a non-root user for the VM:
        - Create user: `sudo useradd [username]` [for this lab we will use `devops` as the non-root user]
        - Set password for the user: `passwd devops`
        - Add the user to the `sudo` group: `sudo usermod -aG sudo devops`
