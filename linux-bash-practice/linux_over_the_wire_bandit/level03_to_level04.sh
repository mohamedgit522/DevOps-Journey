#!/bin/bash
# Bandit Level 3 → Level 4
#
# Goal:
# Password is stored in a hidden file inside the inhere directory.
#
# Steps:
# 1. SSH into bandit3
#    ssh bandit3@bandit.labs.overthewire.org -p 2220
#
# 2. Go to inhere directory.
#    cd inhere
#
# 3. Show all files (including hidden).
#    ls -a
#
# 4. Read the hidden file.
#    cat .hidden
#
# Takeaways:
# - Hidden files start with "."
# - Use ls -a to reveal them

ssh bandit3@bandit.labs.overthewire.org -p 2220 "cd inhere && cat .hidden"

