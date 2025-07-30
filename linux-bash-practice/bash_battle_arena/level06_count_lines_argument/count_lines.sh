#!/bin/bash
set -euo pipefail

########################################
# Mission: Argument Parsing
# Write a script that:
# 1) Accepts a filename as an argument
# 2) Prints the number of lines in that file
# 3) If no filename is provided, display:
#     - "No file provided"
# 4) If the file does not exist, display:
#     - "File does not exist"
#
# Hints:
# - `$#` checks number of arguments
# - `$1` references the first argument
# - Use `wc -l` to count lines
########################################

# --- Solution ---
if [ $# -eq 0 ]; then
  echo "No file provided"
  exit 1
fi

if [ ! -f "$1" ]; then
  echo "File does not exist"
  exit 1
fi

lines=$(wc -l < "$1")
echo "$1 has $lines number of lines"

