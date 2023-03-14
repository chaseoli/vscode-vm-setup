# Usage
Runs a bash script to setup a remote software development server that can be used with [vs code-server](https://code.visualstudio.com/docs/remote/vscode-server).

 Installs the following: 
  - git
  - vs code-server
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
# STEP 1 - CREATE VM
# Create a vm somewhere... like GCP, Azure, or on a dusty laptop with PROXMOX
# For setting up a FREE vm using PROXMOX, watch https://youtu.be/_u8qTN3cCnQ

# STEP 2 - INSTALL DEVELOPMENT TOOLING
# Run from your vm terminal:
wget -O /tmp/setup.sh https://raw.githubusercontent.com/chaseoli/vscode-vm-setup/v1.0.4/setup.sh && bash /tmp/setup.sh

# STEP 3 - ACCESS VS CODE SERVER
# Boom baby...
code-server --accept-server-license-terms
# And follow instructions to login...

# Enjoy!

```
