#!/bin/bash

read -p "Enter the name of the file containing the list of users: " user_file

# Remove any users that are not in the file
for user in $(cut -d: -f1/etc/passwd); do
  if ! grep -q "^$user$" "$user_file"; then
    userdel "$user"
  fi
done

# Add any users that are missing
for user in $(cat "$user_file"); do
  if ! id "$user" &>/dev/null; then
    useradd "$user"
  fi
done
