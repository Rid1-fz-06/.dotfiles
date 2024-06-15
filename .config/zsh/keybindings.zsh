#!/bin/env zsh

# >>> zsh keybindings >>>
bindkey -v

function vi-yank-wl-copy {
    zle vi-yank
   echo "$CUTBUFFER" | wl-copy
}
zle -N vi-yank-wl-copy

bindkey -M vicmd 'y' vi-yank-wl-copy
bindkey "^H" backward-delete-char
bindkey "^?" backward-delete-char
# <<< zsh keybindings <<<
