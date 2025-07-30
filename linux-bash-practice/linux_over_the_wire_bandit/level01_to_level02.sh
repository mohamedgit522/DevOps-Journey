#!/bin/bash
# Bandit Level 1 → Level 2
#
# Goal:
# Retrieve the password for Level 2.
# The password is stored in a file named "-" in the home directory.
#
# Steps:
# 1. SSH into Bandit server as bandit1.
#    ssh bandit1@bandit.labs.overthewire.org -p 2220
#
# 2. List files to confirm file named "-".
#    ls
#
# 3. Read the file using "./-" to avoid confusion with option flags.
#    cat ./-
#
# Password:
# SrmhEgXq59X4F1T3B7jx3Lr3lBwQ2jZv
#
# Takeaways:
# - Handling filenames starting with "-" by using "./".

ssh bandit1@bandit.labs.overthewire.org -p 2220 "cat ./-"

