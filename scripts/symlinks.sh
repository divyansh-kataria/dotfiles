#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

header "Creating Symlinks"

DOTFILES_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
CONFIG_DIR="$DOTFILES_DIR/config"

mkdir -p "$HOME/.config"

for dir in "$CONFIG_DIR"/*; do
    [[ -d "$dir" ]] || continue

    name="$(basename "$dir")"
    target="$HOME/.config/$name"

    if [[ -L "$target" ]]; then
        rm "$target"
    elif [[ -e "$target" ]]; then
        rm -rf "$target"
    fi

    ln -s "$dir" "$target"

    success "Linked $name"
done

success "All symlinks created."

