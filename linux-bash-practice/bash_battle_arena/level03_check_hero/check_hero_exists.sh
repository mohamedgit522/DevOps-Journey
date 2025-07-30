#!/bin/bash
set -euo pipefail

########################################
# Mission: Conditional Statements
# Write a script that checks if a file named `hero.txt`
# exists in the `Arena` directory.
#
#  If it exists:
#    - Print "Hero found!"
#  If it does not exist:
#    - Print "Hero missing!"
#
#  Hints:
# - Use `-f` to check if a file exists
# - Use an `if...else` statement for conditional logic
########################################

# --- Solution ---
if [ -f "./Arena/hero.txt" ]; then
  echo "Hero found!"
else
  echo "Hero missing!"
fi

