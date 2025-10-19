# Module 4 — Functions and Automation

Estimated time: 2–3 hours

Lesson 4.1 — Basic functions in Bash
- Syntax:
  - myfunc() {
      local arg1="$1"
      echo "do work"
    }
- Use `local` for local variables.

Lesson 4.2 — Uploading model results to the cloud (mock)
- Best practice: isolate upload logic into function for testability
- Example: upload_result() { echo "Uploading $1 (mock)"; }

Lesson 4.3 — Arguments, return values, and scope
- Return status: return 0 (success) or non-zero
- Output vs return code: stdout is for data, return code for success/failure

Lesson 4.4 — A percentage calculator
- Function that accepts numerator and denominator, prints percentage with printf

Lesson 4.5 — Summing an array
- Use loop or arithmetic expansions to sum an array of numbers

Lesson 4.6 — Scheduling your scripts with Cron
- crontab syntax: minute hour day month weekday command
  - Example: 0 3 * * * /home/user/scripts/daily-report.sh
- Use full paths, logging, and environment setup inside scripts

Lesson 4.7 — Creating cronjobs & analyzing schedules
- Confirm crontab with `crontab -l`
- Use `crontab -e` to edit
- Cron gotchas: PATH, SHELL, HOME, and other environment differences

Final Project
- Build a scheduled pipeline that:
  - Reads dataset (HR or climate)
  - Computes metrics
  - Writes a report and archives results daily
  - Optionally compresses and moves artifacts

Exercises (Module 4)
- See `exercises/module-4.md`.