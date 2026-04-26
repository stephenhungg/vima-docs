#!/usr/bin/env bash
set -euo pipefail

SOURCE_REPO="${1:-../vima}"
TARGET_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [ ! -f "$SOURCE_REPO/docs.json" ]; then
  echo "source repo missing docs.json: $SOURCE_REPO" >&2
  exit 1
fi

mkdir -p "$TARGET_ROOT/docs"
cp "$SOURCE_REPO/docs.json" "$TARGET_ROOT/docs.json"
cp "$SOURCE_REPO"/docs/*.mdx "$TARGET_ROOT/docs/"
cp "$SOURCE_REPO/docs/AGENT_DOCS_AUDIT.md" "$TARGET_ROOT/docs/"

if [ -f "$SOURCE_REPO/frontend/app/favicon.ico" ]; then
  cp "$SOURCE_REPO/frontend/app/favicon.ico" "$TARGET_ROOT/favicon.ico"
fi

echo "synced mintlify docs from $SOURCE_REPO"
