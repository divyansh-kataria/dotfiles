#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

header "Post Installation"

if [[ "$SHELL" != "/usr/bin/zsh" ]]; then
    die "Please restart your session and use zsh before running this script."
fi

ZSHRC="$HOME/.zshrc"

info "Configuring zsh..."

if ! grep -qxF 'export EDITOR=nvim' "$ZSHRC"; then
    printf '\nexport EDITOR=nvim\n' >> "$ZSHRC"
fi

if ! grep -qxF 'export VISUAL=nvim' "$ZSHRC"; then
    printf 'export VISUAL=nvim\n' >> "$ZSHRC"
fi

success "Editor variables configured."

line

info "Configuring pipx..."

pipx ensurepath
pipx install black

success "pipx configured."

line

info "Configuring npm..."

mkdir -p "$HOME/.npm-global"

npm config set prefix "$HOME/.npm-global"

npm install -g prettier

if ! grep -qxF 'export PATH="$HOME/.npm-global/bin:$PATH"' "$ZSHRC"; then
    printf '\nexport PATH="$HOME/.npm-global/bin:$PATH"\n' >> "$ZSHRC"
fi

success "npm configured."

line

warn "The bundled .gitconfig is Divyansh's personal Git configuration."
warn "It may overwrite your Git name, email and other settings."

if confirm "Copy it to ~/.gitconfig?"; then
    cp "$SCRIPT_DIR/../home/.gitconfig" "$HOME/.gitconfig"
    success ".gitconfig copied."
else
    info "Skipped Git configuration."
fi

header "Post Installation Complete"

success "All tasks completed."

