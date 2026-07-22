#!/usr/bin/env bash
set -e
DEST="$HOME/.claude/skills/webdeck"; mkdir -p "$DEST"
DIR="$(cd "$(dirname "$0")" && pwd)"
cp -R "$DIR/webdeck/." "$DEST/"
echo "✅ webdeck 설치 완료 → $DEST"
echo "Claude에게 '제안서 웹덱 만들어줘'라고 해보세요."
