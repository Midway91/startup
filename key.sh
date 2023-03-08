#!/bin/bash

# Define colors...
RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`

function RED(){
	echo -e "\n${RED}${1}${NC}"
}
function GREEN(){
	echo -e "\n${GREEN}${1}${NC}"
}
function YELLOW(){
	echo -e "\n${YELLOW}${1}${NC}"
}
function BLUE(){
	echo -e "\n${BLUE}${1}${NC}"
}

# Testing if root...
if [ $UID -ne 0 ]
then
	RED "You must run this script as root!" && echo
	exit
fi

BLUE "Updating repositories..."
sudo apt update

BLUE "Installing updates..."
sudo apt install

BLUE "Installing pip..."
sudo apt-get install -y python-pip

BLUE "Installing unzip..."
sudo apt install unzip

BLUE "Installing paramiko"
pip install paramiko

BLUE "Installing HTOP..."
sudo apt install htop

BLUE "Installing tree..."
sudo apt install tree

BLUE "Installing git..."
sudo apt install git

BLUE "Making directory tools..."
mkdir tools

BLUE "Moving to directory tools..."
cd tools

BLUE "Cloning ssh_bruteforcing.git..."
git clone https://github.com/davidbombal/ssh_bruteforcing.git

BLUE "Cloning pyminify.git..."
git clone https://github.com/JohnHammond/pyminify.git

BLUE "Cloning python-keylogger.git..."
git clone https://github.com/davidbombal/python-keylogger.git

BLUE "Updating repositories..."
sudo apt update

BLUE "Installing updates"
sudo apt full-upgrade
