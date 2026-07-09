# Dotfiles

## ⚡ Features

- Niri & Hyprland configs with Noctalia v5
- Neovim (lazy.nvim setup)
- Kitty & Ghostty
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

## 📝 Manual Steps

### Fonts Installation:

- Install the latest **Maple Mono NF (Hinted)** from: https://github.com/subframe7536/maple-font/releases/latest

```bash
mkdir -p ~/.local/share/fonts/MapleMonoNF

unzip ~/Downloads/MapleMono-NF.zip -d ~/Downloads/MapleMono-NF

cp ~/Downloads/MapleMono-NF/*.{ttf,otf} ~/.local/share/fonts/MapleMonoNF/

rm ~/Downloads/MapleMono-NF.zip
rm -rf ~/Downloads/MapleMono-NF

fc-cache -fv
```

- If you have a custom mount point (e.g. `/data`), add the `x-gvfs-show` mount option to its `/etc/fstab` entry.
