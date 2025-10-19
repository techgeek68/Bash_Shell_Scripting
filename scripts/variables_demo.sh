#!/usr/bin/env bash
# scripts/variables_demo.sh
# Demo variable usage and command substitution

set -euo pipefail

now="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
files_count="$(ls -1 | wc -l)"

echo "Now: $now"
echo "Files in dir: $files_count"