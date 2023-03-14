read -p "Enter a username (no spaces)? " NON_ROOT_USER

echo "Hi $NON_ROOT_USER! Just getting some stuff ready."

# create the user
adduser --gecos "" $NON_ROOT_USER
usermod -aG sudo $NON_ROOT_USER

# install sudo
apt-get install sudo

# add install script to .bashrc for new user
echo "wget -O /home/$NON_ROOT_USER/install.sh https://raw.githubusercontent.com/chaseoli/vscode-vm-setup/v1.0.0/install.sh" >> /home/$NON_ROOT_USER/.bashrc
echo "bash install.sh $NON_ROOT_USER" >> /home/$NON_ROOT_USER/.bashrc

# cleanup + remove last two lines from .bashrc
head -n -2 ~/.bashrc > temp && mv temp ~/.bashrc
rm ~/setup.sh

cd /home/$NON_ROOT_USER

# swith user
su $NON_ROOT_USER