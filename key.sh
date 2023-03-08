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

sudo apt update

sudo apt full-upgrade

sudo apt install git

mkdir tools

cd tools

git clone https://github.com/davidbombal/ssh_bruteforcing.git

git clone https://github.com/JohnHammond/pyminify.git

git clone https://github.com/davidbombal/python-keylogger.git

pip install paramiko

sudo apt update

sudo apt full-upgrade
