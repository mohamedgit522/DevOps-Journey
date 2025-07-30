#!/bin/bash
# Bandit Level 8 → Level 9
#
# Goal:
# Password is the only line that occurs once in data.txt.
#
# Steps:
# 1. SSH into bandit8
#    ssh bandit8@bandit.labs.overthewire.org -p 2220
#
# 2. Sort and find unique line.
#    sort data.txt | uniq -u
#
# Takeaways:
# - sort is needed before uniq -u.

ssh bandit8@bandit.labs.overthewire.org -p 2220 "sort data.txt | uniq -u"

