#!/usr/bin/env bash
# Sync TokMeter-app docs to Dropbox and Google Drive.
# Canonical source: ~/TokMeter-app/docs/ and root *.md files
# Mirrors are read-only copies — never edit in Dropbox/Drive.

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
GDRIVE_DST="$HOME/Library/CloudStorage/GoogleDrive-jbsorge@gmail.com/My Drive/AI/AI Work/TOKMETER BAR & APP/"
DROPBOX_DST="$HOME/Dropbox/AI Work/TOKMETER BAR & APP/"

mkdir -p "$GDRIVE_DST" "$DROPBOX_DST"

sync_to() {
  local dst="$1"
  [ -d "$REPO_ROOT/docs" ] && rsync -a "$REPO_ROOT/docs/" "$dst"
  for f in "$REPO_ROOT"/*.md; do
    [ -f "$f" ] && cp -p "$f" "$dst/"
  done
  echo "Synced TokMeter-app docs to: $dst"
}

sync_to "$GDRIVE_DST"
sync_to "$DROPBOX_DST"
echo "Done."
