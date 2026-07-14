#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

header "Applying gsettings"

gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3-dark"
gsettings set org.gnome.desktop.interface cursor-theme "Bibata-Modern-Ice"
gsettings set org.gnome.desktop.interface cursor-size 24
gsettings set org.gnome.desktop.interface gtk-enable-primary-paste true
gsettings set org.gnome.desktop.interface monospace-font-name "Maple Mono NF 11"

success "gsettings applied."

