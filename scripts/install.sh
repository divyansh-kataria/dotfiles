#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

header "Divyansh's Dotfiles Installer"

echo "Select your compositor:"
echo "1) Niri"
echo "2) Hyprland"
echo

while true; do
    read -rp "Choice [1-2]: " choice

    case "$choice" in
        1)
            COMPOSITOR="niri"
            break
            ;;
        2)
            COMPOSITOR="hyprland"
            break
            ;;
        *)
            warn "Invalid choice. Please enter 1 or 2."
            ;;
    esac
done

line

"$SCRIPT_DIR/packages.sh" "$COMPOSITOR"

line

"$SCRIPT_DIR/symlinks.sh"

line

sudo "$SCRIPT_DIR/dns-setup.sh"

line

"$SCRIPT_DIR/fonts.sh"

line

"$SCRIPT_DIR/gsettings.sh"

line

"$SCRIPT_DIR/shell.sh"

header "Installation Complete"

success "Your dotfiles have been installed successfully."

echo
info "Next steps:"
echo "  1. Restart your session (or log out and back in)."
echo "  2. Run: ./scripts/post-install.sh"
echo
success "Enjoy your setup! :)"

