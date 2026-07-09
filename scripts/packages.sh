#!/usr/bin/env bash

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

set -e

header "Installing Packages"

if ! command -v paru >/dev/null 2>&1; then
    warn "paru is not installed."
    info "Installing paru..."

    sudo pacman -Sy --needed paru || die "Failed to install paru."

    hash -r

    success "paru installed."
fi

COMPOSITOR="$1"

if [[ -z "$COMPOSITOR" ]]; then
    die "Usage: ./packages.sh [niri|hyprland]"
fi

COMMON_PACKAGES=(
    wl-clipboard
    gnome-keyring
    libsecret
    xdg-user-dirs
    xdg-utils
    sddm
    qt5-wayland
    qt6-wayland
    adw-gtk-theme

    vlc
    mpv
    yt-dlp

    yazi
    nautilus
    gparted

    neovim
    kitty

    nodejs
    npm
    stylua
    python-pipx

    gnome-tweaks

    capitaine-cursors

    qbittorrent
    blanket

    ttf-jetbrains-mono-nerd
    otf-geist-mono-nerd
    adobe-source-serif-fonts

    zen-browser-bin
    brave-origin-bin

    vscodium

    localsend

    spotify-launcher

    ente-auth-bin
)

NIRI_PACKAGES=(
    niri
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
    xwayland-satellite
    noctalia-git
)

HYPRLAND_PACKAGES=(
    hyprland
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    hyprpicker
    noctalia-git
)

case "$COMPOSITOR" in
    niri)
        PACKAGES=("${COMMON_PACKAGES[@]}" "${NIRI_PACKAGES[@]}")
        ;;

    hyprland)
        PACKAGES=("${COMMON_PACKAGES[@]}" "${HYPRLAND_PACKAGES[@]}")
        ;;

    *)
        die "Unknown compositor: $COMPOSITOR"
        ;;
esac

info "Installing packages..."

paru -S --needed "${PACKAGES[@]}"

success "All packages installed."

