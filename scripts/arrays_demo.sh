#!/usr/bin/env bash
# scripts/arrays_demo.sh
# Demonstrate indexed and associative arrays

set -euo pipefail

# Indexed
arr=(apple banana cherry)
for i in "${!arr[@]}"; do
  echo "Index $i -> ${arr[$i]}"
done

# Associative (bash 4+)
declare -A pop
pop["NY"]=8_000_000
pop["SF"]=884363

for city in "${!pop[@]}"; do
  echo "$city population ${pop[$city]}"
done