# set the non-root username as var
NON_ROOT_USER=$1
GIT_USERNAME=$2
GIT_EMAIL=$3

# install updates and upgrade outdated packages
sudo apt update -y && sudo apt upgrade -y

# install git
sudo apt install git -y

# add the user git information
git config --global user.name "$GIT_USERNAME"
git config --global user.email "$GIT_EMAIL"

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

# install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
# clean-up docker download
rm get-docker.sh 

# install helm
curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
sudo apt-get install apt-transport-https --yes
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm

# install terraform
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
gpg --no-default-keyring \
    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    --fingerprint
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt-get install terraform
terraform version

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

# remove the go zip file
rm ~/$GO_TARGET

# done
echo "Welcome $NON_ROOT_USER! You're all set. Restarting..."
sudo reboot now
