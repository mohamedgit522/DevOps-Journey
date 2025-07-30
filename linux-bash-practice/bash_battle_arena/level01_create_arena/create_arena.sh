#!/bin/bash
set -euo pipefail

########################################
#  Mission: Arena Setup
# Create a directory named "Arena" and then inside it:
#   1) Create three files: warrior.txt, mage.txt, archer.txt
#   2) List the contents of the Arena directory
#
#  Hints:
# - Use `mkdir` to create directories
# - Use `touch` to create files
# - Use `ls` to list files in a directory
########################################

# --- Solution ---
mkdir -p Arena
touch Arena/warrior.txt Arena/mage.txt Arena/archer.txt
ls Arena

