#!/bin/bash
set -euo pipefail

########################################
#  Mission: Variables and Loops
# Create a script that outputs the numbers 1 to 10,
# one number per line.
#
#  Hints:
# - Use a variable to track the count
# - Use a `while` loop to iterate
# - Increment the variable inside the loop
########################################

# --- Solution ---
count=1
while [ $count -le 10 ]; do
  echo "$count"
  ((count++))
done

