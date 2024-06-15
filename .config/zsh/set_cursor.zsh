export KEYTIMEOUT=1

function zle-keymap-select () {
  case $KEYMAP in
  vicmd ) echo -ne '\e[2 q';; # block
  viins | main ) echo -ne '\e[4 q';; # underline
  esac

}
zle -N zle-keymap-select

zle-line-init() {
  zle -K viins
  echo -ne "\e[4 q"
}
zle -N zle-line-init

echo -ne '\e[4 q'
preexec() { echo -ne '\e[4 q' ;}
