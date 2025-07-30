#!/bin/bash
# Bandit Level 4 → Level 5
#
# Goal:
# Password is in the only human-readable file in inhere directory.
#
# Steps:
# 1. SSH into bandit4
#    ssh bandit4@bandit.labs.overthewire.org -p 2220
#
# 2. Go to inhere.
#    cd inhere
#
# 3. Use file command to check file types.
#    file ./*
#
# 4. The one showing ASCII text contains the password.
#    cat ./-file07
#
# Takeaways:
# - Use file command to identify human-readable files.

ssh bandit4@bandit.labs.overthewire.org -p 2220 "cd inhere && cat ./-file07"

