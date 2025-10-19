# Module 3 — Control Statements in Bash Scripting

Estimated time: 2–3 hours

Lesson 3.1 — IF statements
- Syntax:
  - if [[ condition ]]; then
      commands
    elif [[ cond ]]; then
      commands
    else
      commands
    fi
- Common tests: -f, -d, -s, -r, -w; string tests: ==, !=; numeric: -eq, -lt, -gt

Lesson 3.2 — Sorting model results
- Use case: models produce CSVs; choose best by metric
- Example: best=$(sort -t, -k3 -nr results.csv | head -n1)

Lesson 3.3 — Moving relevant files
- Use `if` + `mv` to move files that meet a threshold

Lesson 3.4 — FOR loops & WHILE statements
- for i in *.csv; do echo "$i"; done
- while read -r line; do ...; done < file
- Use process substitution to avoid subshell pitfalls

Lesson 3.5 — Cleaning up a directory
- Task: remove files older than N days: find . -type f -mtime +30 -print0 | xargs -0 rm --

Lesson 3.6 — CASE statements
- Syntax:
  - case "$var" in
      pattern1) commands ;;
      pattern2) commands ;;
    esac
- Example: route files by prefix or operate by day-of-week

Lab 3 — Finish a CASE statement
- Script receives day name; it creates/archives different reports depending on the day (Mon->weekly, Fri->monthly).

Exercises (Module 3)
- See `exercises/module-3.md`.