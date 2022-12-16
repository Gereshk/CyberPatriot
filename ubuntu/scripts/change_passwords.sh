#!/bin/bash

# Get the current logged in user
current_user=$(whoami)

# Change the password of all users except for the current logged in user to CyberPatiot22!
for user in $(cut -d: -f1/etc/passwd); do
  if [ "$user" != "$current_user" ]; then
    echo "$user:CyberPatiot22!" | chpasswd
  fi
done
