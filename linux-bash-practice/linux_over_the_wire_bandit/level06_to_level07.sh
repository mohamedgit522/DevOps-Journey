#!/bin/bash
# Bandit Level 6 → Level 7
#
# Goal:
# Password file:
# - Owned by user bandit7
# - Owned by group bandit6
# - Size 33 bytes
#
# Steps:
# 1. SSH into bandit6
#    ssh bandit6@bandit.labs.overthewire.org -p 2220
#
# 2. Use find in root.
#    find / -user bandit7 -group bandit6 -size 33c 2>/dev/null
#
# 3. Read the found file.
#    cat /var/lib/dpkg/info/bandit7.password
#
# Takeaways:
# - Filtering by owner/group.
# - Suppressing errors with 2>/dev/null.

ssh bandit6@bandit.labs.overthewire.org -p 2220 "find / -user bandit7 -group bandit6 -size 33c 2>/dev/null -exec cat {} \;"

