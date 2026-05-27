#!/bin/sh
# Sync source files to the preview directory.
# The preview server process (under macOS TCC) cannot read ~/Desktop directly,
# so we mirror the project into a non-Desktop cache directory.
set -e
SRC="$(cd "$(dirname "$0")" && pwd)"
DEST="$HOME/Library/Caches/chromepix-preview"
mkdir -p "$DEST"
cp "$SRC/photobooth.html" "$SRC/index.html" "$DEST/"
echo "Synced → $DEST"
ls -la "$DEST"
