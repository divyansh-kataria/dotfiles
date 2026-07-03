# Post Install Setup (CachyOS - Niri / Hyprland with Noctalia Shell)

## 📦 Packages

### Niri

```bash
paru -S niri xdg-desktop-portal-gtk xdg-desktop-portal-gnome xwayland-satellite noctalia-git wl-clipboard gnome-keyring libsecret xdg-user-dirs xdg-utils sddm qt5-wayland qt6-wayland adw-gtk-theme vlc mpv yt-dlp yazi nautilus gparted neovim kitty nodejs npm stylua python-pipx gnome-tweaks capitaine-cursors qbittorrent blanket ttf-jetbrains-mono-nerd otf-geist-mono-nerd adobe-source-serif-fonts zen-browser-bin brave-origin-bin vscodium localsend spotify ente-auth-bin --needed
```

### Hyprland

```bash
paru -S hyprland xdg-desktop-portal-gtk xdg-desktop-portal-hyprland hyprpicker noctalia-git wl-clipboard gnome-keyring libsecret xdg-user-dirs xdg-utils sddm qt5-wayland qt6-wayland adw-gtk-theme vlc mpv yt-dlp yazi nautilus gparted neovim kitty nodejs npm stylua python-pipx gnome-tweaks capitaine-cursors qbittorrent blanket ttf-jetbrains-mono-nerd otf-geist-mono-nerd adobe-source-serif-fonts zen-browser-bin brave-origin-bin vscodium localsend spotify ente-auth-bin --needed
```

## 🎨 Appearance

```bash
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3-dark"
gsettings set org.gnome.desktop.interface cursor-theme 'capitaine-cursors-light'
gsettings set org.gnome.desktop.interface cursor-size 24
gsettings set org.gnome.desktop.interface gtk-enable-primary-paste true
gsettings set org.gnome.desktop.interface monospace-font-name 'Maple Mono NF 11'
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

Add to `.zshrc` to set default editor:

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
cp dotfiles/home/.gitconfig ~/.gitconfig
```

OR

```bash
git config --global user.name "your name"
git config --global user.email "your@email"
git config --global credential.helper libsecret
```
