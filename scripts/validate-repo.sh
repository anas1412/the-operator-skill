#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "${1:-.}" && pwd)"

required_files=(
  "README.md"
  "LICENSE"
  "skills/the-operator/SKILL.md"
)

missing=0
for f in "${required_files[@]}"; do
  if [ ! -f "$repo_root/$f" ]; then
    echo "Missing required file: $f"
    missing=1
  fi
done

if [ "$missing" -eq 1 ]; then
  exit 1
fi

skill_file="$repo_root/skills/the-operator/SKILL.md"

# Extract YAML frontmatter (between first two '---' lines)
frontmatter=$(awk 'BEGIN{n=0} /^---$/{n++; if(n==2) exit} n==1{print}' "$skill_file")

if ! echo "$frontmatter" | grep -q "^name:"; then
  echo "SKILL.md frontmatter must include a 'name:' field"
  exit 1
fi

if ! echo "$frontmatter" | grep -q "^description:"; then
  echo "SKILL.md frontmatter must include a 'description:' field"
  exit 1
fi

echo "Repo structure OK"
