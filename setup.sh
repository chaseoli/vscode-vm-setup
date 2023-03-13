read -p "Enter a username (no spaces)? " NON_ROOT_USER
read -p "Enter a password? " NON_ROOT_PASSWORD

echo "Hi $NON_ROOT_USER! Just getting some stuff ready."

# install updates and upgrade outdated packages
apt update -y && apt upgrade -y

# install sudo
apt-get install sudo

# create the user
adduser --gecos "" $NON_ROOT_USER
usermod -aG sudo $NON_ROOT_USER

echo "wget -O /home/$NON_ROOT_USER/install.sh https://raw.githubusercontent.com/chaseoli/vscode-vm-setup/v1.0.0/install.sh
bash install.sh" >> /home/$NON_ROOT_USER/.bashrc

# swith user
su $NON_ROOT_USER