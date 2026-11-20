#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

header "Divyansh's Dotfiles Installer"

echo "Select your compositor:"
echo "1) Umbriel"
echo "2) Niri"
echo "3) Hyprland"
echo

while true; do
    read -rp "Choice [1-3]: " choice

    case "$choice" in
        1)
            COMPOSITOR="umbriel"
            break
            ;;
        2)
            COMPOSITOR="niri"
            break
            ;;
        3)
            COMPOSITOR="hyprland"
            break
            ;;
        *)
            warn "Invalid choice. Please enter 1, 2 or 3."
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

