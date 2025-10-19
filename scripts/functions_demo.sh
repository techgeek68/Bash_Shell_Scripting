#!/usr/bin/env bash
# scripts/functions_demo.sh
# Functions, percentage calculator, and summing arrays

set -euo pipefail

percent() {
  if [[ $# -lt 2 ]]; then
    echo "percent() needs numerator and denominator" >&2
    return 2
  fi
  num=$1; den=$2
  if [[ "$den" == "0" || -z "$den" ]]; then
    echo "NaN"
    return 1
  fi
  awk -v n="$num" -v d="$den" 'BEGIN{printf "%.1f", (n/d)*100}'
}

sum_array() {
  local -n arr_ref=$1
  local s=0
  for v in "${arr_ref[@]}"; do
    ((s+=v))
  done
  echo "$s"
}

# demo
echo "50 of 120 -> $(percent 50 120)%"
values=(10 20 30)
echo "Sum -> $(sum_array values)"