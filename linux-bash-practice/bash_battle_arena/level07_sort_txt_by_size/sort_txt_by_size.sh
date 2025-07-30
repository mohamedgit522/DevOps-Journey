#!/bin/bash
set -euo pipefail

########################################
#  Mission: File Sorting Script
# Write a script that sorts all `.txt` files in a directory by their size,
# from smallest to largest, and displays the sorted list.
#
#  Hints:
# - Use `find` to list `.txt` files
# - Use `stat` to get file sizes (platform dependent)
# - Use `sort -n` to sort numerically by size
########################################

DIRECTORY="./Arena"

if [ ! -d "$DIRECTORY" ]; then
  echo "Directory $DIRECTORY does not exist."
  exit 1
fi

# Linux-compatible stat command with fallback for macOS
find "$DIRECTORY" -type f -name "*.txt" -exec stat --printf="%s %n\n" {} + 2>/dev/null || \
find "$DIRECTORY" -type f -name "*.txt" -exec stat -f "%z %N" {} + | sort -n

