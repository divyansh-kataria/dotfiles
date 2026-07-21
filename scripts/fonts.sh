#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

header "Installing Fonts"

FONTS_DIR="$(cd "$SCRIPT_DIR/.." && pwd)/fonts"
TARGET_DIR="$HOME/.local/share/fonts"

mkdir -p "$TARGET_DIR"

info "Copying fonts..."

cp -r "$FONTS_DIR"/. "$TARGET_DIR"/

info "Refreshing font cache..."

fc-cache -fv >/dev/null

success "Fonts installed."

