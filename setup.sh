# get username
read -p "Enter a username (no spaces)? " NON_ROOT_USER

echo "Hi $NON_ROOT_USER! Just getting some stuff ready."

# create the user
adduser --gecos "" $NON_ROOT_USER
usermod -aG sudo $NON_ROOT_USER

# promt for git info
read -p "Your .git username " GIT_USERNAME
read -p "Your .git email? " GIT_EMAIL

# install sudo
apt-get install sudo

cd /home/$NON_ROOT_USER

# get the install script
wget -O /tmp/install.sh https://raw.githubusercontent.com/chaseoli/vscode-vm-setup/v1.0.4/install.sh

echo "Installing for developer environment tooling..."

# install as other user
sudo -H -u $NON_ROOT_USER bash -c "bash /tmp/install.sh $NON_ROOT_USER $GIT_USERNAME $GIT_EMAIL"
