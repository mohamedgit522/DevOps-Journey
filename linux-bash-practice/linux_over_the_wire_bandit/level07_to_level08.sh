#!/bin/bash
# Bandit Level 7 → Level 8
#
# Goal:
# Password is in data.txt next to word "millionth".
#
# Steps:
# 1. SSH into bandit7
#    ssh bandit7@bandit.labs.overthewire.org -p 2220
#
# 2. Grep the word.
#    grep millionth data.txt
#
# Takeaways:
# - grep to search keywords.

ssh bandit7@bandit.labs.overthewire.org -p 2220 "grep millionth data.txt"

