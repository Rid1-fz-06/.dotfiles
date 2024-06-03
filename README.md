# My Personal Configs

This is my **Very Minimal** personal configs for the tools I use as daily-drivers.

## Dependencies

- [zsh](https://www.zsh.org)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-completions](https://github.com/zsh-users/zsh-completions)
- [Neovim](https://neovim.io)
- [AstroNvim](https://astronvim.com)
- [eza](https://github.com/eza-community/eza)
- [bat](https://github.com/sharkdp/bat)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [gdu](https://github.com/dundee/gdu)
- [trash-cli](https://github.com/andreafrancia/trash-cli)
- [fzf](https://github.com/junegunn/fzf)
- [Hyprland](https://hyprland.org)
- [Alacritty](https://alacritty.org/)
- [tofi](https://github.com/philj56/tofi) or [wofi](https://hg.sr.ht/~scoopta/wofi)
- [waybar](https://github.com/Alexays/Waybar)
- [dunst](https://github.com/dunst-project/dunst)
- [neovide](https://github.com/neovide/neovide) (optional)
- [ipython](https://ipython.org) (optional for `<leader>r` and `<leader>tp` keybindings inside neovim)
- [Htop](https://htop.dev)
- [NerdFonts](https://www.nerdfonts.com) (specifically `JetBrainsMono Nerd Font` and `Ubuntu Nerd Font`)
- [zathura](https://pwmt.org/projects/zathura)
- [swaybg](https://github.com/swaywm/swaybg) (optional)
- [starship](https://starship.rs)
- [feh](https://feh.finalrewind.org)
- [wlogout](https://github.com/ArtsyMacaw/wlogout)
- [fastfetch](https://github.com/fastfetch-cli/fastfetch)

To install most of the packages in fedora:

```bash
sudo dnf5 install "qt6-qtwayland" "qt5-qtwayland" "qt6ct" "qt5ct" "alacritty" "kvantum" "hyprland" "sddm" "ripgrep" "plocate" "eza" "fzf" "git" "nodejs" "zsh" "wlogout" "gh" "bat" "feh" "zathura" "zathura-pdf-poppler" "waybar" "symlinks" "trash-cli" "neovim" "kvantum-qt5" "lxappearance" "gnome-tweaks" "fd-find" "exiftool"
```

## Theaming

Different applications uses different protocols for theaming. To set,

- GTK3 theme, use [lxappearance](https://github.com/lxde/lxappearance)
- GTK4 theme, use [Gnome Tweaks](https://gitlab.gnome.org/GNOME/gnome-tweaks)
- QT5 theme, use [qt5ct](https://github.com/desktop-app/qt5ct)
- QT6 theme, use [qt6ct](https://github.com/trialuser02/qt6ct)

It is better to use [Kvantum](https://github.com/tsujan/Kvantum) for QT theaming. But `qt5ct` doesn't detect Kvantum by default. For this, `kvantum-qt5` package needed to be installed.

## Desktop Portals

To use specific file picker, add the following to `$HOME/.config/xdg-desktop-portal/portals.conf`

```
[preferred]
default=hyprland
org.freedesktop.impl.portal.FileChooser=gtk
```

QT5 applications might not use default file picker. To fix this, add the following to `$HOME/.config/qt5ct/qt5ct.conf`

```
[Appearance]
standard_dialogs=xdgdesktopportal
```

NOTE: a reboot might be needed.

To make firefox use xdg-desktop-portal, go to `about:config` and change `widget.use-xdg-desktop-portal.file-picker` and `widget.use-xdg-desktop-portal.mime-handler` to `1` from `2`

To make QT5 applications follow theme, those should be run setting `QT_QPA_PLATFORMTHEME` to `qt5ct`. For example, to run vlc: `QT_QPA_PLATFORMTHEME=qt5ct vlc`

## Installation

Clone this repository

```bash
mkdir -p $HOME/.dotfiles
git clone --depth=1 'https://github.com/Rid1-fz-06/.dotfiles.git' "$HOME/.dotfiles"
cd "$HOME/.dotfiles"
```

Run the installer

```bash
./install
```

pass `--help` to installer for more options
