#!/bin/bash
# Bandit Level 9 → Level 10
#
# Goal:
# Password is a human-readable string preceded by "====" in data.txt.
#
# Steps:
# 1. SSH into bandit9
#    ssh bandit9@bandit.labs.overthewire.org -p 2220
#
# 2. Extract readable strings.
#    strings data.txt | grep "===="
#
# Takeaways:
# - strings extracts readable text from binary data.

ssh bandit9@bandit.labs.overthewire.org -p 2220 "strings data.txt | grep '===='"

