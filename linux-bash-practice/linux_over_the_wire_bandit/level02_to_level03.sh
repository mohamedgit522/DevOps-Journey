#!/bin/bash
# Bandit Level 2 → Level 3
#
# Goal:
# Find the password for Level 3 stored in the file "spaces in this filename".
#
# Steps:
# 1. SSH into Bandit server as bandit2.
#    ssh bandit2@bandit.labs.overthewire.org -p 2220
#
# 2. List files to locate the file with spaces.
#    ls
#
# 3. Use quotes to cat the file.
#    cat "spaces in this filename"
#
# Password:
# UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK
#
# Takeaways:
# - Handling filenames with spaces using quotes.

ssh bandit2@bandit.labs.overthewire.org -p 2220 "cat 'spaces in this filename'"

