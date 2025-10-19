#!/usr/bin/env bash
# scripts/cron_example.sh
# Example daily job script (safe to run interactively)
# Should be run from cron with full paths.
set -euo pipefail

LOGDIR="$HOME/logs"
mkdir -p "$LOGDIR"
echo "$(date -u +"%Y-%m-%dT%H:%M:%SZ") - Running daily job" >> "$LOGDIR/daily.log"
# Simulate work
echo "Report generated at $(date -u)" >> "$LOGDIR/daily.log"