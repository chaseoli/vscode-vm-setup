# get curl
sudo apt install curl -y

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
sudo apt install git -y

# promt for git info
read -p "Your .git username " GIT_USERNAME
read -p "Your .git email? " GIT_EMAIL

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
curl -OL https://golang.org/dl/go1.20.2.linux-amd64.tar.gz
# rm -rf /usr/local/go && tar -C /usr/local -xzf go1.20.2.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.20.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version

echo "Welcome $NON_ROOT_USER! You're all set."