# Usage
Runs a script on Ubuntu Server start-up and converts it to a VS Code optimized [vs code-server](https://code.visualstudio.com/docs/remote/vscode-server)
> Consider using Proxmox hypervisor to host your development VMs  

```shell
# Create your image by running the following as root user:

echo "wget -O setup.sh https://raw.githubusercontent.com/chaseoli/vscode-vm-setup/v1.0.0/setup.sh" >> .bashrc

echo "bash setup.sh" >> .bashrc

#  this adds a setup script to your .bashrc that automatically runs at start-up to setup the developer dev environment. Then this image can be cloned and re-provisioned for your team's developers. Enjoy!

```


