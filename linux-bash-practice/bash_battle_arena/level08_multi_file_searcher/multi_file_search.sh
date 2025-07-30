#!/bin/bash
set -euo pipefail

########################################
# Mission: Multi-File Searcher
# Create a script that:
# 1) Accepts a search term as an argument
# 2) Searches all `.log` files in the current directory and subdirectories
# 3) Outputs the names of files containing the search term
#
#  Hints:
# - Use `find` to locate `.log` files
# - Use `grep -q` for quiet search
# - Loop through files to check for matches
########################################

if [ $# -eq 0 ]; then
  echo "Please provide a search term"
  exit 1
fi

search_term="$1"

all_log_files=$(find . -type f -name "*.log")

for logfile in $all_log_files; do
  if grep -q "$search_term" "$logfile"; then
    echo "file_name: $logfile"
  fi
done

