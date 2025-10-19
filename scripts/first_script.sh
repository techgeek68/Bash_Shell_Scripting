#!/usr/bin/env bash
# scripts/first_script.sh
# A minimal "first script" demonstration.

set -euo pipefail

echo "Listing current directory with details:"
ls -lah

echo
echo "Top 3 largest files (by human-readable size approximation):"
ls -S | head -n 3