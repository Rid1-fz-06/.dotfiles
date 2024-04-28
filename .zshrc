#!/bin/zsh

# >>> source global config >>>
[ -f "/etc/zshrc" ] && . "/etc/zshrc"
# <<< source global config <<<

# >>> local configs >>>
[ -z "$XDG_CONFIG_HOME" ] && XDG_CONFIG_HOME=$HOME/.config
for rc in "$XDG_CONFIG_HOME"/zsh/*; do . "$rc"; done
# <<< local configs <<<
