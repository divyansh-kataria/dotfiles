# Dotfiles

My personal Linux setup (CachyOS, Niri/Hyprland, Neovim, Kitty/Alacritty).

## 🖼️ Preview

## ⚡ Features

- Niri / Hyprland configs
- Neovim (lazy.nvim setup)
- Kitty + Alacritty
- Minimal and performance-focused

## 🚀 Setup

Clone repo:

```bash
git clone https://github.com/divyansh-kataria/dotfiles.git
cd dotfiles

- Link Required Configs:

ln -s ~/dotfiles/config/kitty ~/.config/kitty
ln -s ~/dotfiles/config/alacritty ~/.config/alacritty
ln -s ~/dotfiles/config/nvim ~/.config/nvim
ln -s ~/dotfiles/config/niri ~/.config/niri
ln -s ~/dotfiles/config/hypr ~/.config/hypr
ln -s ~/dotfiles/config/mpv ~/.config/mpv

```

###DNS Setup(Quad9):

sudo ./scripts/dns-setup.sh

## 📚 Documentation

- Post install setup: docs/post-install.md
