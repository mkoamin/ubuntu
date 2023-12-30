#!/bin/bash

# Update the system
sudo apt update
sudo apt upgrade

# Install xrdp
sudo apt install xrdp

# Start xrdp
sudo systemctl start xrdp

# Enable xrdp to start on boot
sudo systemctl enable xrdp

# Create .xsession file for the default Ubuntu desktop environment
echo "gnome-session" > ~/.xsession

# Allow RDP traffic through the firewall (UFW)
sudo ufw allow 3389
sudo ufw enable
# Reload UFW to apply the changes
sudo ufw reload

sudo xrdp status
sudo ufw status
