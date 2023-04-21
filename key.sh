#!/bin/bash

sudo apt update
sudo apt full-upgrade

sudo apt install -y python-pip

sudo apt install unzip

pip install paramiko

sudo apt install htop

sudo apt install tree

sudo apt install git

mkdir tools

cd tools

git clone https://github.com/davidbombal/ssh_bruteforcing.git

git clone https://github.com/JohnHammond/pyminify.git

git clone https://github.com/davidbombal/python-keylogger.git

sudo apt update
sudo apt full-upgrade