# Usage
Runs a script on Ubuntu Server start-up and converts it to a VS Code optimized [vs code-server](https://code.visualstudio.com/docs/remote/vscode-server)
> Consider using Proxmox hypervisor to host your development VMs  

```shell
# Step 1 - Setup your non-root user 
wget -O /tmp/setup.sh https://raw.githubusercontent.com/chaseoli/vscode-vm-setup/v1.0.4/setup.sh && bash /tmp/setup.sh

# Step2 - install dev dependencies for your new user
bash /tmp/install.sh

# Enjoy!

```
