# Dotfiles

My personal Linux setup (Niri, Hyprland, Neovim, Kitty/Alacritty).

## 🖼️ Preview

## ⚡ Features

- Niri & Hyprland configs with Noctalia Shell
- Neovim (lazy.nvim setup)
- Kitty + Alacritty
- Minimal and performance-focused

## 🚀 Setup

Clone repo:

```bash
git clone https://github.com/divyansh-kataria/dotfiles.git
cd dotfiles
```

### Link Required Configs:

Assumes repo is cloned to `~/dotfiles`.

```bash
rm -rf ~/.config/kitty
rm -rf ~/.config/alacritty
rm -rf ~/.config/nvim
rm -rf ~/.config/mpv
rm -rf ~/.config/niri
rm -rf ~/.config/hypr
rm -rf ~/.config/noctalia

ln -s ~/dotfiles/config/kitty ~/.config/kitty
ln -s ~/dotfiles/config/alacritty ~/.config/alacritty
ln -s ~/dotfiles/config/nvim ~/.config/nvim
ln -s ~/dotfiles/config/mpv ~/.config/mpv
ln -s ~/dotfiles/config/niri ~/.config/niri
ln -s ~/dotfiles/config/hypr ~/.config/hypr
ln -s ~/dotfiles/config/noctalia ~/.config/noctalia
```

> **Note:** Noctalia configs are for noctalia v5

### 🌐 DNS Setup (Quad9):

```bash
sudo ./scripts/dns-setup.sh
```

## 📚 Documentation

[Post install setup](docs/post-install.md)
