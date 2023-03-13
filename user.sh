#!/usr/bin/env bash

NON_ROOT_USER=$1
# GIT_USERNAME=$2
# GIT_EMAIL=$3

CURRENT_USER=$(whoami)

    echo "Your are Logged-in as $CURRENT_USER."

if  [[ -z "$1"  || "$CURRENT_USER" != "root" ]]; then
    printf "\n You must be logged-in as root and pass the name and password of the user you would like to create."
    printf "\n For example: bash install.sh <USERNAME_HERE> <PASSWORD_HERE>\n\n"
    exit 1
else

    apt-get install sudo

    echo "Creating non-root user: $NON_ROOT_USER"

    # add username and password
    # adduser --disabled-password --gecos "" $NON_ROOT_USER
    adduser --gecos "" $NON_ROOT_USER
    usermod -aG sudo $NON_ROOT_USER

    # install updates and upgrade outdated packages
    apt update && apt upgrade
    
    # install nodejs
    wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
    source ~/.bashrc 

    # install git
    apt install git

    # # setup git
    # git config --global user.name "Your Name"
    # git config --global user.email "youremail@domain.com"

    # install vscode server
    wget -O- https://aka.ms/install-vscode-server/setup.sh | sh

    # install global node packages
    npm i -g typescript firebase-tools @loopback/cli @angular/cli mocha 

    # install the OpenJDK JRE:
    apt install default-jre
    java -version

    # install python 
    apt-get install python3.6
    python3 --version
    command -v pip3

    # install go
    curl -OL https://golang.org/dl/go1.20.2.linux-amd64.tar.gz
    # rm -rf /usr/local/go && tar -C /usr/local -xzf go1.20.2.linux-amd64.tar.gz
    tar -C /usr/local -xzf go1.20.2.linux-amd64.tar.gz
    export PATH=$PATH:/usr/local/go/bin
    go version

    # login as new user
    su $NON_ROOT_USER

    # # start code server (to be accessed remotely)
    # code-server --accept-server-license-terms

fi