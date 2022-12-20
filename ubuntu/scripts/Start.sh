#!/bin/bash

# Calculate the amount of time to sleep between each line
lines=25
sleep_time=$(echo "3/$lines" | bc -l)

# Print out the banner
echo "   ______      __                   "
sleep $sleep_time
echo "  / ____/_  __/ /_  ___  _____      "
sleep $sleep_time
echo " / /   / / / / __ \/ _ \/ ___/      "
sleep $sleep_time
echo "/ /___/ /_/ / /_/ /  __/ /           "
sleep $sleep_time
echo "\\____/\\__, /_.___/\\___/_/           "
sleep $sleep_time
echo "    _/____/     __       _       __  "
sleep $sleep_time
echo "   / __ \\____ _/ /______(_)___  / /_"
sleep $sleep_time
echo "  / /_/ / __ \`/ __/ ___/ / __ \\/ __/"
sleep $sleep_time
echo " / ____/ /_/ / /_/ /  / / /_/ / /_  "
sleep $sleep_time
echo "/_/    \\__,_/\\__/_/  /_/\\____/\\__/  "
sleep $sleep_time
echo "    __    _                         "
sleep $sleep_time
echo "   / /   (_)___  __  ___  __        "
sleep $sleep_time
echo "  / /   / / __ \\/ / / / |/_/        "
sleep $sleep_time
echo " / /___/ / / / / /_/ />  <          "
sleep $sleep_time
echo "/_____/_/_/ /_/\\__,_/_/|_| __       "
sleep $sleep_time
echo "  / ___/__________(_)___  / /_      "
sleep $sleep_time
echo "  \\__ \\/ ___/ ___/ / __ \\/ __/      "
sleep $sleep_time
echo " ___/ / /__/ /  / / /_/ / /_        "
sleep $sleep_time
echo "/____/\\___/_/  /_/ .___/\\__/        "
sleep $sleep_time
echo "                /_/                 "
sleep $sleep_time


                
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
