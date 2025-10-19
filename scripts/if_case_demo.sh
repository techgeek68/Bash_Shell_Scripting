#!/usr/bin/env bash
# scripts/if_case_demo.sh
# Demonstrate if and case statements for file routing

set -euo pipefail

file="$1"

if [[ ! -f "$file" ]]; then
  echo "File $file missing" >&2
  exit 1
fi

case "$file" in
  modelA_*) mkdir -p models/A; mv "$file" models/A/ ;;
  modelB_*) mkdir -p models/B; mv "$file" models/B/ ;;
  *) mkdir -p models/other; mv "$file" models/other/ ;;
esac

echo "Moved $file"