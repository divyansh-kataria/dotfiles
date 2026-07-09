#!/usr/bin/env bash

# ==================================================
# Divyansh's Dotfiles - Utility Functions
# ==================================================

# Colors
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
BLUE="\033[0;34m"
CYAN="\033[0;36m"
BOLD="\033[1m"
RESET="\033[0m"

# --------------------------------------------------
# Output
# --------------------------------------------------

header() {
    echo
    echo -e "${BOLD}${BLUE}==================================================${RESET}"
    echo -e "${BOLD}${CYAN}$1${RESET}"
    echo -e "${BOLD}${BLUE}==================================================${RESET}"
    echo
}

info() {
    echo -e "${BLUE}[INFO]${RESET} $1"
}

success() {
    echo -e "${GREEN}[ OK ]${RESET} $1"
}

warn() {
    echo -e "${YELLOW}[WARN]${RESET} $1"
}

error() {
    echo -e "${RED}[FAIL]${RESET} $1"
}

die() {
    error "$1"
    exit 1
}

# --------------------------------------------------
# Prompts
# --------------------------------------------------

confirm() {
    local prompt="${1:-Continue?}"

    while true; do
        read -rp "$prompt [y/N]: " reply

        case "$reply" in
            [Yy]|[Yy][Ee][Ss]) return 0 ;;
            ""|[Nn]|[Nn][Oo]) return 1 ;;
            *) warn "Please answer y or n." ;;
        esac
    done
}

ask() {
    local prompt="$1"
    local default="$2"

    read -rp "$prompt [$default]: " reply

    if [[ -z "$reply" ]]; then
        echo "$default"
    else
        echo "$reply"
    fi
}

# --------------------------------------------------
# Checks
# --------------------------------------------------

require_command() {
    command -v "$1" >/dev/null 2>&1 || die "'$1' is not installed."
}

# --------------------------------------------------
# Runner
# --------------------------------------------------

run() {
    local message="$1"
    shift

    info "$message"

    if "$@"; then
        success "$message"
    else
        die "$message"
    fi
}

# --------------------------------------------------
# Misc
# --------------------------------------------------

pause() {
    read -rp "Press Enter to continue..."
}

line() {
    echo "--------------------------------------------------"
}

