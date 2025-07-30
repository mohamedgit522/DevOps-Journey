#!/bin/bash
set -euo pipefail

########################################
# 🎯 Mission: File Manipulation
# Create a script that copies all `.txt` files from the
# `Arena` directory to a new directory called `Backup`.
#
# 💡 Hints:
# - Use `mkdir -p` to create the Backup directory if it doesn’t exist
# - Use `cp` with wildcards (`*.txt`) to copy multiple files
########################################

# --- Solution ---
mkdir -p Backup
cp ./Arena/*.txt ./Backup/

