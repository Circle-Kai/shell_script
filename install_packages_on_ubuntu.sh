# Install Packages on Ubuntu
###### Tags: `ShellScripts` `Ubuntu` `Package`
#!/usr/bin/env bash

#Base on ubuntu 18.04
#----------------------------------------------------------------------------------------------------------------------------
sudo apt -y update
sudo apt -y upgrade


sudo apt isntall -y \
    terminator \
    exfat-fuse \
    exfat-utils \
    git \
    net-tools
