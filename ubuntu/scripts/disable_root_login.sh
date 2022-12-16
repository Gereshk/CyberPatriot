#!/bin/bash

# Disable root login via SSH by adding a PermitRootLogin no line to the SSH configuration file
echo "PermitRootLogin no" >> /etc/ssh/sshd_config

# Restart the SSH service to apply the changes
systemctl restart ssh
