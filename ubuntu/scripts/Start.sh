#!/bin/bash

while true; do
  # Print a menu for the user to choose from
  echo "Please select an option:"
  echo "1) Install and run ClamAV"
  echo "2) Install and configure GUFW"
  echo "3) Disable the guest account"
  echo "4) Set password policy"
  echo "5) Compare users in a file to users on the machine and update as needed"
  echo "6) Change the password of all users to CyberPatriot22! (except for the current logged in user)"
  echo "7) Exit"
  read -p "Enter your selection (1, 2, 3, 4, 5, 6, or 7): " selection

  # Execute the selected task
  case $selection in
    1) install_clamav.sh;;
    2) install_gufw.sh;;
    3) disable_guest_account.sh;;
    4) set_password_policy.sh;;
    5) compare_users.sh;;
    6) change_passwords.sh;;
    7) exit 0;;
    *) echo "Invalid selection. Please try again.";;
  esac
done
