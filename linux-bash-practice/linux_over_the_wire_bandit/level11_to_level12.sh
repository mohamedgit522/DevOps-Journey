#!/bin/bash
# Bandit Level 11 → Level 12
#
# Goal:
# Password in data.txt is ROT13 encoded.
#
# Steps:
# 1. SSH into bandit11
#    ssh bandit11@bandit.labs.overthewire.org -p 2220
#
# 2. Decode ROT13.
#    tr 'A-Za-z' 'N-ZA-Mn-za-m' < data.txt
#
# Takeaways:
# - tr shifts characters for ROT13 decoding.

ssh bandit11@bandit.labs.overthewire.org -p 2220 "tr 'A-Za-z' 'N-ZA-Mn-za-m' < data.txt"

