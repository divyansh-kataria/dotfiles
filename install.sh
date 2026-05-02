#!/bin/bash

echo "Setting up dotfiles..."

configs=(nvim hypr niri kitty alacritty mpv uwsm)

for config in "${configs[@]}"; do
    src="$HOME/dotfiles/config/$config"
    dest="$HOME/.config/$config"

    echo "Processing $config..."

    if [ ! -d "$src" ]; then
        echo "Skipping $config (not found in repo)"
        continue
    fi

    # FORCE REMOVE anything existing
    if [ -e "$dest" ] || [ -L "$dest" ]; then
        rm -rf "$dest"
    fi

    ln -s "$src" "$dest"
    echo "$config linked."
done

echo "All configs linked (force mode)."
