# Dotfiles

My personal Linux setup (Niri, Hyprland, Neovim, Kitty/Alacritty).

## 🖼️ Preview

## ⚡ Features

- Niri config with Modular Stack(waybar, rofi, mako, etc)
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
rm -rf ~/.config/waybar
rm -rf ~/.config/rofi
rm -rf ~/.config/hyprlock
rm -rf ~/.config/hypridle
rm -rf ~/.config/spotify-player

ln -s ~/dotfiles/config/kitty ~/.config/kitty
ln -s ~/dotfiles/config/alacritty ~/.config/alacritty
ln -s ~/dotfiles/config/nvim ~/.config/nvim
ln -s ~/dotfiles/config/mpv ~/.config/mpv
ln -s ~/dotfiles/config/niri ~/.config/niri
ln -s ~/dotfiles/config/hypr ~/.config/hypr
ln -s ~/dotfiles/config/waybar ~/.config/waybar
ln -s ~/dotfiles/config/rofi ~/.config/rofi
ln -s ~/dotfiles/config/hyprlock ~/.config/hyprlock
ln -s ~/dotfiles/config/hypridle ~/.config/hypridle
ln -s ~/dotfiles/config/spotify-player ~/.config/spotify-player
```

### 🌐 DNS Setup (Quad9):

```bash
sudo ./scripts/dns-setup.sh
```

## 📚 Documentation

[Post install setup](docs/post-install.md)
