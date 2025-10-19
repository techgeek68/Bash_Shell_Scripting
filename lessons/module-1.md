# Module 1 — From Command-Line to Bash Script

Estimated time: 2–3 hours

Lesson 1.1 — Introduction and refresher
- Goals: refresh navigation, file ops, I/O redirection.
- Essential commands: ls, cd, pwd, cat, less, head, tail, cp, mv, rm, mkdir.
- I/O: >, >>, <, |, 2>, &>.

Quick tip: Always test file-changing commands in a disposable folder.

Lesson 1.2 — Extracting scores with shell
- Toolset: cut, awk, sed, grep, sort
- Example dataset (scores.csv): name,subject,score
  - Use awk: awk -F, '$3 >= 90 { print $1 "," $3 }' scores.csv
- Demo command: get top 5 students
  - sort -t, -k3 -nr scores.csv | head -n6

Lesson 1.3 — Searching a book with shell
- Use grep to find lines, sed to extract contexts:
  - grep -n "keyword" book.txt
  - grep -n -C2 "keyword" book.txt
- Use awk for structured text extraction.

Lesson 1.4 — Your first Bash script
- Template:
  - #!/usr/bin/env bash
  - set -euo pipefail
  - # script body
- Best practices: shebang, set flags, usage/help message, comments.

Lesson 1.5 — A simple Bash script
- Convert commands to script `scripts/first_script.sh`
- Example: read CSV and print summary

Lesson 1.6 — Shell pipelines to Bash scripts
- Replace pipes with variables or while/read loops
- Use heredocs for multi-line help text

Lesson 1.7 — Standard streams & arguments
- stdin, stdout, stderr
- Accessing args: $1..$N, "$@", $#
- Example: scripts/args_demo.sh

Lab 1 — Using arguments with HR data
- Provided: hr_employees.csv (columns: id,name,department,salary)
- Tasks:
  - Write a script that accepts department name as argument and prints average salary for that department.
  - Use awk inside script to compute average.

Exercises (Module 1)
- See `exercises/module-1.md` (in exercises folder)