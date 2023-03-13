#!/usr/bin/env bash

# install sudo
apt-get install sudo

# install updates and upgrade outdated packages
apt update -y && apt upgrade -y

# get curl
apt install curl -y

# install nodejs
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.bashrc 

# get nvm 
nvm -v
nvm install --lts
nvm use --lts 

# get node version
node -v
npm -v

# install global node packages
npm i -g typescript firebase-tools @loopback/cli @angular/cli mocha 

# install git
apt install git -y

# install vscode server
wget -O- https://aka.ms/install-vscode-server/setup.sh | sh

# install the OpenJDK JRE:
apt install default-jre -y
java -version

# install python 
apt-get install python3.6 -y
python3 --version
apt install python3-pip -y
pip3 -V

# install go
curl -OL https://golang.org/dl/go1.20.2.linux-amd64.tar.gz
# rm -rf /usr/local/go && tar -C /usr/local -xzf go1.20.2.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.20.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version

