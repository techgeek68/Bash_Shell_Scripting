#!/usr/bin/env bash
# scripts/numeric_demo.sh
# Fahrenheit to Celsius converter
# Usage: ./numeric_demo.sh 98.6

set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <fahrenheit>" >&2
  exit 2
fi

f="$1"
# Use awk for floating point math
c=$(awk -v f="$f" 'BEGIN { printf "%.2f", (f-32)*(5/9) }')
echo "$f F -> $c C"