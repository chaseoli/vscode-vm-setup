# setup new user
read -p "Enter a username (no spaces)? " NON_ROOT_USER

# promt for git info
read -p "Your .git username " GIT_USERNAME
read -p "Your .git email? " GIT_EMAIL

echo "Hi $NON_ROOT_USER! Just getting some stuff ready."

# create the user
adduser --gecos "" $NON_ROOT_USER
usermod -aG sudo $NON_ROOT_USER

# install sudo
apt-get install sudo

cd /home/$NON_ROOT_USER

# swith user
su $NON_ROOT_USER

# get the install script
wget -O /tmp/setup.sh https://raw.githubusercontent.com/chaseoli/vscode-vm-setup/v1.0.3/install.sh

# install as other user
bash /tmp/install.sh $NON_ROOT_USER $GIT_USERNAME $GIT_EMAIL