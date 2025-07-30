#!/bin/bash
# Bandit Level 10 → Level 11
#
# Goal:
# Password is base64 encoded in data.txt.
#
# Steps:
# 1. SSH into bandit10
#    ssh bandit10@bandit.labs.overthewire.org -p 2220
#
# 2. Decode base64.
#    base64 -d data.txt
#
# Takeaways:
# - base64 -d decodes encoded data.

ssh bandit10@bandit.labs.overthewire.org -p 2220 "base64 -d data.txt"

