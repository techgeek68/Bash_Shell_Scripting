#!/usr/bin/env bash
# scripts/args_demo.sh
# Demonstrate arguments and usage message

set -euo pipefail

usage() {
  cat <<EOF
Usage: $0 <department> <file.csv>
Print average salary for department
EOF
}

if [[ $# -lt 2 ]]; then
  usage
  exit 2
fi

dept="$1"
file="$2"

awk -F, -v d="$dept" 'BEGIN{sum=0;count=0}
  $3==d { sum+=$4; count++}
  END { if(count) printf "%.2f\n", sum/count; else print "0" }' "$file"