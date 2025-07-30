i#!/bin/bash
set -euo pipefail

########################################
#  Boss Battle: Combining Basics
# Combine everything learned so far into one script.
#
#  Mission:
# 1) Create a directory named `Battlefield`
# 2) Inside `Battlefield`, create:
#     - knight.txt
#     - sorcerer.txt
#     - rogue.txt
# 3) Check if `knight.txt` exists:
#     - If it does, move it to a new directory `Archive`
# 4) List the contents of both `Battlefield` and `Archive`
#
#  Hints:
# - Use `mkdir -p` for directories
# - Use `touch` for file creation
# - Use `mv` for moving files
# - Use `ls -l` to show directory contents
########################################

# --- Solution ---
mkdir -p Battlefield
touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rogue.txt

if [ -f Battlefield/knight.txt ]; then
  mkdir -p Archive
  mv Battlefield/knight.txt Archive/
  echo "knight.txt has been moved to Archive."
else
  echo "knight.txt not found"
fi

echo "Contents of Battlefield:"
ls -l Battlefield

echo "Contents of Archive:"
ls -l Archive

