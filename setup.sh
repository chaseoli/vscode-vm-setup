read -p "Enter a username (no spaces)? " NON_ROOT_USER

echo "Hi $NON_ROOT_USER! Just getting some stuff ready."

# create the user
adduser --gecos "" $NON_ROOT_USER
usermod -aG sudo $NON_ROOT_USER

echo "wget -O /home/$NON_ROOT_USER/install.sh https://raw.githubusercontent.com/chaseoli/vscode-vm-setup/v1.0.0/install.sh" >> /home/$NON_ROOT_USER/.bashrc
echo "bash install.sh" >> /home/$NON_ROOT_USER/.bashrc

# install sudo
apt-get install sudo

cd /home/$NON_ROOT_USER

# swith user
su $NON_ROOT_USER