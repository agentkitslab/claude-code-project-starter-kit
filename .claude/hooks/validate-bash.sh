#!/usr/bin/env bash
set -euo pipefail

INPUT="${CLAUDE_TOOL_INPUT:-}"

blocked_patterns=(
  'rm -rf /'
  'rm -rf ~'
  'git push --force'
  'curl .*\|.*sh'
  'wget .*\|.*sh'
  'chmod 777'
  'sudo rm'
)

for pattern in "${blocked_patterns[@]}"; do
  if echo "$INPUT" | grep -Eiq "$pattern"; then
    echo "Blocked potentially dangerous command: $pattern" >&2
    exit 2
  fi
done

exit 0
