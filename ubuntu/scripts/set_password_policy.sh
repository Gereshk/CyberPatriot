#!/bin/bash

# Set the password maximum age to 90 days
sed -i 's/PASS_MAX_DAYS.*/PASS_MAX_DAYS   90/' /etc/login.defs

# Set the password minimum age to 10 days
sed -i 's/PASS_MIN_DAYS.*/PASS_MIN_DAYS   10/' /etc/login.defs

# Set the number of allowed failed login attempts to 5
sed -i 's/FAIL_DELAY.*/FAIL_DELAY    5/' /etc/login.defs

# Set the account lockout duration to 30 minutes
sed -i 's/DENY_THRESHOLD_INVALID.*/DENY_THRESHOLD_INVALID    5/' /etc/pam.d/common-auth
sed -i 's/DENY_THRESHOLD_VALID.*/DENY_THRESHOLD_VALID    5/
