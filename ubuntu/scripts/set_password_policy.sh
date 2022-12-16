#!/bin/bash

# Set the password maximum age to 90 days
sed -i 's/PASS_MAX_DAYS.*/PASS_MAX_DAYS   90/' /etc/login.defs

# Set the password minimum age to 10 days
sed -i 's/PASS_MIN_DAYS.*/PASS_MIN_DAYS   10/' /etc/login.defs

# Set the number of allowed failed login attempts to 5
sed -i 's/FAIL_DELAY.*/FAIL_DELAY    5/' /etc/login.defs

# Set the account lockout duration to 30 minutes
sed -i 's/DENY_THRESHOLD_INVALID.*/DENY_THRESHOLD_INVALID    5/' /etc/pam.d/common-auth
sed -i 's/DENY_THRESHOLD_VALID.*/DENY_THRESHOLD_VALID    5/' /etc/pam.d/common-auth
sed -i 's/DENY_THRESHOLD_ROOT.*/DENY_THRESHOLD_ROOT    5/' /etc/pam.d/common-auth
sed -i 's/AUTH_TIMEOUT.*/AUTH_TIMEOUT    1800/' /etc/pam.d/common-auth

# Set the minimum password length to 10 characters
sed -i 's/minlen.*/minlen = 10/' /etc/security/pwquality.conf

# Require passwords to contain at least one lowercase letter, one uppercase letter, one digit, and one special character
sed -i 's/dcredit.*/dcredit = -1/' /etc/security/pwquality.conf
sed -i 's/ucredit.*/ucredit = -1/' /etc/security/pwquality.conf
sed -i 's/ocredit.*/ocredit = -1/' /etc/security/pwquality.conf
sed -i 's/lcredit.*/lcredit = -1/' /etc/security/pwquality.conf
