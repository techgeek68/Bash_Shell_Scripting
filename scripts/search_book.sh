#!/usr/bin/env bash
# scripts/search_book.sh
# Search a book for a keyword and print context
# Usage: ./search_book.sh keyword book.txt

set -euo pipefail

if [[ $# -lt 2 ]]; then
  echo "Usage: $0 keyword book.txt" >&2
  exit 2
fi

keyword="$1"
book="$2"

grep -n -C2 --color=always "$keyword" "$book" || echo "No matches for '$keyword'"