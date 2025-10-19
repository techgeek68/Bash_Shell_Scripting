# Solutions Hints

Exercise 2.1 (F->C)
- Use awk for floating arithmetic:
  - awk -v f="$f" 'BEGIN{printf "%.2f\n", (f-32)*5/9}'

Exercise 2.2 (Associative arrays)
- declare -A temps; while IFS=, read -r city temp; do temps["$city"]=$temp; done < file
- iterate: for city in "${!temps[@]}"; do echo "$city -> ${temps[$city]}"; done