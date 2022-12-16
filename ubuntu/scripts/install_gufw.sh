#!/bin/bash

# Update the package manager's package list
apt update

# Install GUFW
apt install gufw

# Enable the firewall
ufw enable

# Allow incoming SSH connections
ufw allow ssh

# Deny all other incoming connections
ufw default deny incoming
