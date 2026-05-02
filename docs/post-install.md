# Post Install Setup (CachyOS - Niri / Hyprland with Noctalia Shell)

## 📦 Packages

### Niri / Noctalia

```bash
paru -Rns micro meld shelly
paru -S vlc mpv yt-dlp yazi gparted neovim kitty tree-sitter-cli nodejs npm stylua python-pipx gnome-tweaks seahorse qbittorrent blanket ttf-jetbrains-mono-nerd otf-geist-mono-nerd wl-clipboard cliphist wlsunset brave-bin bibata-cursor-theme-bin spotify visual-studio-code-bin ente-auth-bin ente-desktop-bin localsend-bin
```

### Hyprland

```bash
paru -Rns micro meld shelly
paru -S hyprland xdg-desktop-portal-hyprland xdg-desktop-portal-gtk hyprpicker yazi nautilus gnome-keyring libsecret noctalia-shell sddm qt5-wayland qt6-wayland adw-gtk-theme vlc mpv yt-dlp gparted neovim kitty tree-sitter-cli nodejs npm stylua python-pipx gnome-tweaks seahorse qbittorrent blanket ttf-jetbrains-mono-nerd otf-geist-mono-nerd wl-clipboard cliphist wlsunset brave-bin bibata-cursor-theme-bin spotify visual-studio-code-bin ente-auth-bin ente-desktop-bin localsend-bin
```

## 🎨 Appearance

```bash
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3-dark"
```

## 📁 Mount Fix (Show /data in Nautilus)

```bash
sudo nvim /etc/fstab
```

Add `x-gvfs-show` to the `/data` partition

## 🐚 Terminal Setup

```bash
chsh -s /usr/bin/zsh
```

Restart shell and complete p10k setup.

Set default editor:

```bash
export EDITOR=nvim
export VISUAL=nvim
```

## 🛠 Dev Tools

```bash
pipx ensurepath
pipx install black

mkdir -p ~/.npm-global
npm config set prefix '~/.npm-global'
npm install -g prettier
```

Add to `.zshrc`:

```bash
export PATH="$HOME/.npm-global/bin:$PATH"
```

## 🔧 Git Setup

```bash
git config --global user.name "your name"
git config --global user.email "your@email"
git config --global credential.helper libsecret
```
