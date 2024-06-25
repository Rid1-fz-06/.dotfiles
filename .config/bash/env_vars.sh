#!/bin/env bash

# >>> environment variables >>>
export DOTFILES="$HOME/.dotfiles"
export VISUAL="/bin/nvim"
export EDITOR="$VISUAL"
export SUDO_EDITOR="$VISUAL"
export JAVA_HOME="/usr/java/latest"
export MAMBA_NO_BANNER=1
export MANROFFOPT="-c"
export PAGER="most"
# export MANPAGER="sh -c 'col -bx | bat -l man -p --paging=always --plain'"
export MANPAGER="$PAGER"
export BAT_PAGER="$PAGER"
[ "$(basename "$SHELL")" = "zsh" ] && export HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
export MOAR='--statusbar=bold --no-linenumbers'
export FZF_DEFAULT_OPTS="-i --layout=reverse --no-multi --no-mouse --cycle --scroll-off=1 --no-scrollbar --height=~40% --bind 'tab:toggle-down,btab:toggle-up' --border=rounded --prompt=\" \"  --pointer=\"\" --marker=\" \" --exit-0 --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
# <<< environment variables <<<
