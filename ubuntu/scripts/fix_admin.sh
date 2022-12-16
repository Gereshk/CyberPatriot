#!/bin/bash

# Prompt the user for the name of the file containing the list of administrators
read -p "Enter the name of the file containing the list of administrators: " admin_file

# Iterate over the list of users in the /etc/passwd file
while IFS=: read -r username _ _ uid _ _ _ _; do
  # Skip users with a UID below 1000 (system users)
  if [ "$uid" -lt 1000 ]; then
    continue
  fi

  # Check if the user is an administrator
  if grep -q "^$username$" "$admin_file"; then
    # Make the user an administrator
    usermod -a -G sudo "$username"
  else
    # Remove the user from the sudo group
    deluser "$username" sudo
  fi
done < /etc/passwd
