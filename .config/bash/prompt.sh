#!/bin/env bash

# >>> prompt >>>
export PS1='\[\033[0;34m\][\[\033[0;31m\]\u\[\033[0m\]@\[\033[0;32m\]\h \[\033[1;33m\]\[\e[3m\]\W\[\e[0m\]\[\033[0;34m\]] $([ "$?" = 0 ] || echo "\033[0;31m")󰁕 \[\033[0m\]'
export PROMPT_COMMAND='printf "\n"'
# <<< prompt <<<
