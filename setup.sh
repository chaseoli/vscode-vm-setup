read -p "Enter a username (no spaces)? " NON_ROOT_USER

echo "Hi $NON_ROOT_USER! Just getting some stuff ready."

# create the user
adduser --gecos "" $NON_ROOT_USER
usermod -aG sudo $NON_ROOT_USER

# install sudo
apt-get install sudo

install_dev()
{
    
    # install git
    sudo apt install git -y

    # promt for git info
    read -p "Your .git username " GIT_USERNAME
    read -p "Your .git email? " GIT_EMAIL

    # install updates and upgrade outdated packages
    sudo apt update -y && sudo apt upgrade -y

    # get curl
    sudo apt install curl -y

    # install nodejs
    wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
    source ~/.nvm/nvm.sh 

    # get nvm 
    nvm -v
    nvm install --lts
    nvm use --lts 

    # get node version
    node -v
    npm -v

    # install global node packages
    npm i -g typescript firebase-tools @loopback/cli @angular/cli mocha 

    # add the user git information
    git config --global user.name "$GIT_USERNAME"
    git config --global user.email "$GIT_EMAIL"

    # install vscode server
    wget -O- https://aka.ms/install-vscode-server/setup.sh | sh

    # install the OpenJDK JRE:
    sudo apt install default-jre -y
    java -version

    # install python 
    sudo apt-get install python3.6 -y
    python3 --version
    sudo apt install python3-pip -y
    pip3 -V

    # install go
    GO_TARGET=go1.20.2.linux-amd64.tar.gz
    curl -OL https://golang.org/dl/$GO_TARGET
    sudo tar -C /usr/local -xzf $GO_TARGET
    export PATH=$PATH:/usr/local/go/bin
    go version
    # permanently add go to path
    echo "export PATH=$PATH:/usr/local/go/bin" >> /home/$NON_ROOT_USER/.bashrc
    # cleanup go download
    rm ~/$GO_TARGET

    source ~/.bashrc

    # done
    echo "Welcome $NON_ROOT_USER! You're all set."
}

# swith user
su --session-command install_dev - $NON_ROOT_USER

