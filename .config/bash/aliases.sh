#!/bin/env bash

# >>> aliases >>>
alias du="gdu --non-interactive --config-file=\$HOME/.config/gdu/gdu.yaml"
alias cat="bat"
alias rg="rg --ignore-case"
alias ls="eza --classify --oneline --color=always --icons --group-directories-first"
alias la="eza --classify --oneline --color=always --icons --group-directories-first --all"
alias ll="eza --classify --oneline --color=always --icons --group-directories-first --inode --modified --octal-permissions --links --group --long --git"
alias lla="eza --classify --oneline --color=always --icons --group-directories-first --inode --modified --octal-permissions --links --group --long --git --all"
alias tree="eza --classify --icons --group-directories-first --tree"
alias rm="trash"
alias cdd="cd \$DOTFILES"
# <<< aliases <<<
