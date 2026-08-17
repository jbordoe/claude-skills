#!/usr/bin/env bash
# Symlink every skill in this repo into ~/.claude/skills/ so Claude Code picks them up.
#
# Repo layout: skills/<group>/<name>/SKILL.md
# Claude Code loads personal skills flat from ~/.claude/skills/<skill>/SKILL.md,
# so each grouped skill is linked as ~/.claude/skills/<group>-<name>.
# A group named "_" is treated as ungrouped (linked as just <name>).
#
# Idempotent: re-running relinks. Refuses to clobber a real (non-symlink) dir.

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$REPO_DIR/skills"
DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"

mkdir -p "$DEST"

linked=0
skipped=0

for skill_md in "$SRC"/*/*/SKILL.md; do
  skill_dir="$(dirname "$skill_md")"
  name="$(basename "$skill_dir")"
  group="$(basename "$(dirname "$skill_dir")")"

  if [ "$group" = "_" ]; then
    link_name="$name"
  else
    link_name="${group}-${name}"
  fi
  target="$DEST/$link_name"

  if [ -e "$target" ] && [ ! -L "$target" ]; then
    echo "SKIP  $link_name — a real directory already exists at $target (move it aside first)"
    skipped=$((skipped + 1))
    continue
  fi

  ln -sfn "$skill_dir" "$target"
  echo "LINK  $link_name -> $skill_dir"
  linked=$((linked + 1))
done

echo ""
echo "Done. $linked linked, $skipped skipped."
echo "Restart Claude Code (or run /reload-skills) to pick up changes."
