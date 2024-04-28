#!/bin/bash

# >>> source global definitions >>>
[ -f "/etc/bashrc" ] && . "/etc/bashrc"
# <<< source global definitions <<<

# >>> source local configs >>>
[ -z "$XDG_CONFIG_HOME" ] && XDG_CONFIG_HOME=$HOME/.config
for rc in "$XDG_CONFIG_HOME"/bash/*; do . "$rc"; done
# <<< source local configs <<<
