#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

header "Configuring Shell"

if [[ "$SHELL" == "/usr/bin/zsh" ]]; then
    success "zsh is already your default shell."
    exit 0
fi

info "Changing default shell to zsh..."

chsh -s /usr/bin/zsh

success "Default shell changed to zsh."

info "Please log out and back in (or restart your terminal) before running post-install.sh."

