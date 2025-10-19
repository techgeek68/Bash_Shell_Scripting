#!/usr/bin/env bash
# scripts/extract_scores.sh
# Extract high scorers from a CSV
# Usage: ./extract_scores.sh scores.csv threshold

set -euo pipefail

if [[ $# -lt 2 ]]; then
  echo "Usage: $0 scores.csv threshold" >&2
  exit 2
fi

file="$1"
threshold="$2"

awk -F, -v t="$threshold" 'NR==1{print; next} $3+0 >= t' "$file"