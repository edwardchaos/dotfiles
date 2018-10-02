#!bin/bash

sudo apt install git
sudo apt install python3-pip

#Install venv
sudo pip3 install virtualenv

#Install venv wrapper
sudo pip3 install virtualenvwrapper

#Curl for gettig i3gaps
sudo apt install curl
sudo bash ./installi3gaps.sh

#Setup symlinks for dot files
sudo bash ./symlink.sh
