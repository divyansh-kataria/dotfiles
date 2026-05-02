### CachyOS Post Install Setup[Niri & Hyprland with Noctalia Shell + GNOME + KDE]

### Apps Installation & DE specific tweaks

## Niri/w\Noctalia

paru -Rns micro meld shelly

paru -S vlc mpv yt-dlp yazi gparted neovim kitty tree-sitter-cli nodejs npm stylua python-pipx gnome-tweaks seahorse qbittorrent blanket ttf-jetbrains-mono-nerd otf-geist-mono-nerd wl-clipboard cliphist wlsunset brave-bin bibata-cursor-theme-bin spotify visual-studio-code-bin ente-auth-bin ente-desktop-bin localsend-bin

## Hyprland

paru -Rns micro meld shelly

paru -S hyprland xdg-desktop-portal-hyprland xdg-desktop-portal-gtk hyprpicker yazi nautilus gnome-keyring libsecret noctalia-shell sddm qt5-wayland qt6-wayland adw-gtk-theme vlc mpv yt-dlp gparted neovim kitty tree-sitter-cli nodejs npm stylua python-pipx gnome-tweaks seahorse qbittorrent blanket ttf-jetbrains-mono-nerd otf-geist-mono-nerd wl-clipboard cliphist wlsunset brave-bin bibata-cursor-theme-bin spotify visual-studio-code-bin ente-auth-bin ente-desktop-bin localsend-bin

# For Niri and Hyprland

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3-dark"
or through gnome-tweaks app(legacy applications)

sudo nvim /etc/fstab
then add
x-gvfs-show
to /data partition

## GNOME

paru -Rns micro meld shelly decibels showtime snapshot

paru -S vlc mpv yt-dlp yazi gparted neovim kitty tree-sitter-cli nodejs npm stylua python-pipx adw-gtk-theme seahorse qbittorrent blanket extension-manager ttf-jetbrains-mono-nerd otf-geist-mono-nerd wl-clipboard gnome-font-viewer brave-bin spotify visual-studio-code-bin ente-auth-bin ente-desktop-bin localsend-bin

## KDE

paru -Rns micro meld shelly

paru -S vlc yt-dlp yazi gparted neovim kitty tree-sitter-cli nodejs npm stylua python-pipx qbittorrent blanket ttf-jetbrains-mono-nerd otf-geist-mono-nerd wl-clipboard brave-bin spotify visual-studio-code-bin ente-auth-bin ente-desktop-bin localsend-bin

## Terminal Shell Setup

Switch to zsh

```bash
chsh -s /usr/bin/zsh
```

Then run zsh and complete p10k setup

then run

```bash
nvim ~/.zshrc
```

Set default editor

```bash
export EDITOR=nvim
export VISUAL=nvim
```

then run

```bash
source ~/.zshrc
```

check with:- echo $EDITOR

## Dev tools setup

```md
## Dev tools
```

```bash

pipx ensurepath
pipx install black

mkdir -p ~/.npm-global
npm config set prefix '~/.npm-global'
npm install -g prettier
```

then run

```bash
nvim ~/.zshrc
```

paste:

```bash
export PATH="$HOME/.npm-global/bin:$PATH"
```

### Git Setup

git config --global user.name "Divyansh Kataria"
git config --global user.email "217927899+divyansh-kataria@users.noreply.github.com"
git config --global credential.helper libsecret
