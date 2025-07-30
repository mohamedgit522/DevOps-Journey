#!/bin/bash
set -euo pipefail

########################################
# Mission: Boss Battle 2 - Intermediate Scripting
# Write a script that:
# 1) Creates a directory called Arena_Boss.
# 2) Creates 5 text files inside named file1.txt to file5.txt.
# 3) Generates random lines (10-20) per file.
# 4) Sorts files by size and displays them.
# 5) Moves files containing "Victory" to Victory_Archive.
#
#  Hints:
# - Use brace expansion for file creation.
# - Use RANDOM for line count.
# - Use grep to detect "Victory" in files.
# - Use stat for file size sorting.
########################################

mkdir -p arena_boss
touch arena_boss/file{1..5}.txt

all_files=$(find arena_boss -type f -name "*.txt")

for file in $all_files; do
  lines=$(( RANDOM % 11 + 10 ))  # 10 to 20 lines
  > "$file"
  for (( i=1; i<=lines; i++ )); do
    echo "This is line $i" >> "$file"
  done
done

echo "Files sorted by size:"
find arena_boss -type f -exec stat --printf="%s %n\n" {} + 2>/dev/null || \
find arena_boss -type f -exec stat -f "%z %N" {} + | sort -n

# Ensure file3.txt contains "Victory" for demo
if ! grep -q "Victory" arena_boss/file3.txt; then_

