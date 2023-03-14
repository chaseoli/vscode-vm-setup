# Usage
Runs a script on Ubuntu Server start-up and converts it to a VS Code optimized [vs code-server](https://code.visualstudio.com/docs/remote/vscode-server)
> Consider using Proxmox hypervisor to host your development VMs  

```shell
# Create your dev image by running the following as root user on startup:
wget -O /tmp/setup.sh https://raw.githubusercontent.com/chaseoli/vscode-vm-setup/v1.0.3/setup.sh && bash /tmp/setup.sh
bash /tmp/install.sh
# Enjoy!

```
