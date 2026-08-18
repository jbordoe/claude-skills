#!/usr/bin/env bash
# Package each skill as a zip ready for manual upload to claude.ai
# (Settings -> Capabilities/Features -> Skills -> upload).
#
# claude.ai takes ONE skill per zip, with SKILL.md inside a top-level folder
# named after the skill. We name each folder <group>-<name> to match the CLI
# invoke name, and drop the zips in dist/.
#
# There is NO API/CLI to push skills to claude.ai — this just makes the manual
# upload one drag per skill instead of copy-paste. Re-run anytime; it rebuilds.

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$REPO_DIR/skills"
DIST="$REPO_DIR/dist"

rm -rf "$DIST"
mkdir -p "$DIST"

built=0
for skill_md in "$SRC"/*/*/SKILL.md; do
  skill_dir="$(dirname "$skill_md")"
  name="$(basename "$skill_dir")"
  group="$(basename "$(dirname "$skill_dir")")"

  if [ "$group" = "_" ]; then
    zip_name="$name"
  else
    zip_name="${group}-${name}"
  fi

  # Stage under a folder named exactly zip_name so the zip has one clean root dir.
  stage="$DIST/$zip_name"
  mkdir -p "$stage"
  cp "$skill_md" "$stage/SKILL.md"
  # Include any sibling files the skill ships (references/, scripts, etc.).
  find "$skill_dir" -mindepth 1 -maxdepth 1 ! -name SKILL.md -exec cp -R {} "$stage/" \;

  (cd "$DIST" && zip -qr "$zip_name.zip" "$zip_name")
  rm -rf "$stage"
  echo "PACK  $zip_name.zip"
  built=$((built + 1))
done

echo ""
echo "Done. $built zip(s) in $DIST/"
echo "Upload each in claude.ai -> Settings -> Skills. They do NOT sync back to the repo."
