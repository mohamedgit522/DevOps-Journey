#!/bin/bash
# Bandit Level 5 → Level 6
#
# Goal:
# Password is in a file somewhere in inhere directory
# Conditions:
# - human-readable
# - 1033 bytes
# - not executable
#
# Steps:
# 1. SSH into bandit5
#    ssh bandit5@bandit.labs.overthewire.org -p 2220
#
# 2. Search with find.
#    find inhere -type f -size 1033c ! -executable
#
# 3. Read the file.
#    cat inhere/maybehere07/.file2
#
# Takeaways:
# - find with size, type, permissions filters.

ssh bandit5@bandit.labs.overthewire.org -p 2220 "find inhere -type f -size 1033c ! -executable -exec cat {} \;"

