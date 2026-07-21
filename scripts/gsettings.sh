#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

header "Applying gsettings"

gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3-dark"
gsettings set org.gnome.desktop.interface cursor-theme "capitaine-cursors-light"
gsettings set org.gnome.desktop.interface cursor-size 24
gsettings set org.gnome.desktop.interface gtk-enable-primary-paste true
gsettings set org.gnome.desktop.interface font-name "Onest 11"
gsettings set org.gnome.desktop.interface document-font-name "Onest 12"
gsettings set org.gnome.desktop.interface monospace-font-name "Maple Mono NF 11"
xdg-user-dirs-gtk-update

success "gsettings applied."

