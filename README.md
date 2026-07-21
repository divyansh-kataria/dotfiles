# Dotfiles

## ⚡ Features

- Niri & Hyprland configs with Noctalia v5
- Neovim (lazy.nvim setup)
- Kitty
- Cloudflare DNS-over-TLS (DoT) setup

## 🚀 Installation

> Note: These are my personal, opinionated dotfiles. You are expected to make them suit your needs.

Clone the repository:

```bash
git clone https://github.com/divyansh-kataria/dotfiles.git
cd dotfiles
./scripts/install.sh
```

The installer will:

- Prompt you to choose Niri or Hyprland
- Install all required packages
- Create symlinks for the configurations
- Set up Cloudflare DNS-over-TLS (DoT) with systemd-resolved
- Apply desktop `gsettings`
- Change the default shell to zsh

After installation:

- Restart your session (or log out and back in)
- Run:

```bash
./scripts/post-install.sh
```

This will:

- Add default editor to .zshrc
- Install dev tools (pipx, black, prettier, npm)
