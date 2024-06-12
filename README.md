# My Personal Configs

These are my personal configs for the tools I use.

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
- [starship](https://starship.rs) (optional)
- [feh](https://feh.finalrewind.org)
- [wlogout](https://github.com/ArtsyMacaw/wlogout)
- [fastfetch](https://github.com/fastfetch-cli/fastfetch)
- [wl-clip-persist](https://github.com/Linus789/wl-clip-persist)
- [moar](https://github.com/walles/moar)

Almost all of these packages are included in the installer script

## Theaming

Different applications uses different protocols for theaming. To set theme, use specific tools...

- GTK3: [lxappearance](https://github.com/lxde/lxappearance)
- GTK4: [Gnome Tweaks](https://gitlab.gnome.org/GNOME/gnome-tweaks)
- QT5: [qt5ct](https://github.com/desktop-app/qt5ct)
- QT6: [qt6ct](https://github.com/trialuser02/qt6ct)

It is **better** to use [Kvantum](https://github.com/tsujan/Kvantum) for QT theaming. But `qt5ct` doesn't detect Kvantum by default. For this, `kvantum-qt5` package needed to be installed.

## Desktop Portals

To use specific file picker, add the following to `$HOME/.config/xdg-desktop-portal/portals.conf`

```dosini
[preferred]
default=hyprland;gtk
org.freedesktop.impl.portal.FileChooser=gtk
```

QT5 applications might not use default file picker. To fix this, add the following to `$HOME/.config/qt5ct/qt5ct.conf`

```dosini
[Appearance]
standard_dialogs=xdgdesktopportal
```

NOTE: a reboot might be needed.

To make firefox use xdg-desktop-portal, go to `about:config` and change `widget.use-xdg-desktop-portal.file-picker` and `widget.use-xdg-desktop-portal.mime-handler` to `1` from `2`

To make QT5 applications follow theme, those should be run setting `QT_QPA_PLATFORMTHEME` to `qt5ct`. For example, to run VLC:

```bash
env QT_QPA_PLATFORMTHEME=qt5ct vlc
```

## Native Wayland Support

Electron applications, such as Chromium, Visual Studio Code, Discord supports Wayland natively, but uses XWayland. to make them use Wayland, pass these commandline flags

```
--enable-features=UseOzonePlatform --ozone-platform=wayland
```

For example, to run Chromium:

```bash
chromium-browser --enable-features=UseOzonePlatform --ozone-platform=wayland
```

## Installation

Run the installer

```bash
bash <(curl --location 'https://raw.githubusercontent.com/Rid1-fz-06/.dotfiles/master/install')

```

pass `--help` to installer for more options
