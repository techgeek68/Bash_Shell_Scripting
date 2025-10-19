#!/usr/bin/env bash
# scripts/loops_demo.sh
# Demonstrate for and while loops

set -euo pipefail

# for loop
for f in *.csv; do
  echo "Processing $f"
done

# while loop reading a file
cnt=0
while IFS=, read -r id name score; do
  ((cnt++))
done < <(tail -n +2 scores.csv 2>/dev/null || echo "")
echo "Rows processed: $cnt"