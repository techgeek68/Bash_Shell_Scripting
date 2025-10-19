#!/usr/bin/env bash
# Example solution for Lab 1 — Average salary by department
# Usage: ./avg_by_dept.sh DepartmentName hr_employees.csv

if [[ $# -lt 2 ]]; then
  echo "Usage: $0 <Department> <file.csv>"
  exit 2
fi

dept="$1"
file="$2"

awk -F, -v d="$dept" 'BEGIN{sum=0;count=0}
  $3 == d { sum += $4; count++ }
  END {
    if (count>0) printf "Department: %s\nAverage salary: %.2f\n", d, sum/count
    else print "No records for department " d
  }' "$file"