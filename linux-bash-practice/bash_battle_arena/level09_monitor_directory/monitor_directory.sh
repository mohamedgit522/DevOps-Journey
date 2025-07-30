#!/bin/bash
set -euo pipefail

########################################
# Mission: Script to Monitor Directory Changes
# Write a script that:
# 1) Monitors a directory for any changes (creation, modification, deletion)
# 2) Logs changes with a timestamp to a log file
#
#  Hints:
# - Use `fswatch` (install if missing)
# - Use `while read` loop to process events
# - Use `date` for timestamp formatting
########################################

DIRECTORY="./Arena"
LOG_FILE="change_log.txt"

if [ ! -d "$DIRECTORY" ]; then
  echo "Directory $DIRECTORY does not exist."
  exit 1
fi

fswatch -r "$DIRECTORY" | while read -r event; do
  if [ -e "$event" ]; then
    echo "$(date +'%Y-%m-%d %H:%M:%S') File modified/created: $event" >> "$LOG_FILE"
  else
    echo "$(date +'%Y-%m-%d %H:%M:%S') File deleted: $event" >> "$LOG_FILE"
  fi
done

