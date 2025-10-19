# Module 2 — Variables in Bash Scripting

Estimated time: 2–3 hours

Lesson 2.1 — Basic variables in Bash
- Assign: name="Alice"
- Refer: echo "$name"
- Quoting: single vs double quotes
- No types: everything is a string by default

Lesson 2.2 — Using variables in Bash
- Command substitution: files=$(ls -1)
  - Preferred: $(command) over backticks
- Read user input: read -r var

Lesson 2.3 — Shell within a shell (subshells)
- Parentheses create subshell: (cd /tmp; ls)
- Subshells do not modify parent variables; use command substitution to capture output.

Lesson 2.4 — Numeric variables & arithmetic
- Integer arithmetic: ((sum = a + b))
- Use `bc` for floating point or bash 4.x with printf
- Example: Convert Fahrenheit to Celsius:
  - c=$(awk "BEGIN{print ($f - 32) * 5/9}")

Lesson 2.5 — Extracting data from files
- Save fields, counts, totals to variables for further processing

Lesson 2.6 — Arrays in Bash
- Indexed arrays:
  - arr=(one two three)
  - echo "${arr[1]}"  # two
  - iterate: for v in "${arr[@]}"; do ...; done
- Associative arrays (bash >= 4)
  - declare -A map; map["NY"]="New York"

Lesson 2.7 — Climate calculations in Bash
- Given a CSV of daily temps, compute avg, min, max using awk in script
- Example pipeline:
  - awk -F, '{sum+=$2; if(min==""||$2<min)min=$2; if(max==""||$2>max)max=$2} END{print sum/NR, min, max}' temps.csv

Exercises (Module 2)
- See exercises folder for hands-on tasks including arrays and conversions.