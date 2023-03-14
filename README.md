# Usage
Runs a bash script to setup a remote software development server that can be used with [vs code-server](https://code.visualstudio.com/docs/remote/vscode-server).

 Installs the following: 
  - git
  - NodeJs
  - Angular
  - Typescript
  - Python3
  - Java
  - Go
  - Docker
  - Helm
  - Terraform

> Consider using Proxmox hypervisor to host your development VMs  

```shell
# Run from your vm terminal
wget -O /tmp/setup.sh https://raw.githubusercontent.com/chaseoli/vscode-vm-setup/v1.0.4/setup.sh && bash /tmp/setup.sh
# Enjoy!

```
