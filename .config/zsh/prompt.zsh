#!/bin/env zsh

# >>> prompt >>>
typeset -g VIRTUAL_ENV_DISABLE_PROMPT=1
setopt prompt_subst nopromptbang prompt{cr,percent,sp,subst}
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats " [ %b  ]"

function precmd() {
  vcs_info
  print -rP $'\n%B%F{blue}%~%f'
}

# PS1='%B%F{blue}[%F{red}%n%F{white}@%F{green}%m %F{yellow}%1~%F{blue}]%f%b %(?.%F{blue}󰁕%f.%F{red}󰁕%f) '
PS1='%F{magenta}%f%F{yellow}%f%F{blue}%f%b '
RPS1='%B%F{magenta}$vcs_info_msg_0_%f%b%B%F{blue}%(1j. [ %j   ].)%f%b%(?..%F{red} %f)'
# <<< prompt <<<
