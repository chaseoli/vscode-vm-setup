read -p "Enter a username (no spaces)? " NON_ROOT_USER

echo "Hi $NON_ROOT_USER! Just getting some stuff ready."

# create the user
adduser --gecos "" $NON_ROOT_USER sudo
usermod -aG sudo $NON_ROOT_USER

# install sudo
apt-get install sudo

# get the install script
wget -O /tmp/setup.sh https://raw.githubusercontent.com/chaseoli/vscode-vm-setup/v1.0.2/install.sh

# swith user
su $NON_ROOT_USER

# change dir to the new user
cd /home/$NON_ROOT_USER

# install as other user
bash /tmp/install.sh $NON_ROOT_USER
