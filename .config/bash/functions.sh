#!/bin/env bash

# >>> functions >>>
function ff {
	__arg="${1:-.}"
	test -d "$__arg" || return 1

	__path="$(fd -Ha --no-ignore --type directory --type symlink --type file --follow ".*" "$__arg" | fzf --ansi --height=100% --preview="_preview {}" --preview-window 'top,60%,border-bottom')"

	[ -z "$__path" ] && return 1
	test -d "$__path" && {
		cd "$__path" || return 1
		return 0
	}
	xdg-open "$__path" &>/dev/null || {
		printf "enter command to run file: "
		read -r __command
		eval "$__command $__path"
	}
}

function fw {
	RG_PREFIX="rg --column --line-number --no-heading --hidden --follow --color=always --smart-case "
	fzf --ansi --disabled \
		--bind "start:reload:$RG_PREFIX {q} ${1:-.}" \
		--bind "change:reload:sleep 0.1; $RG_PREFIX {q} || true" \
		--delimiter : \
		--preview 'bat --color=always {1} --highlight-line {2} --theme="Dracula"' \
		--height=100% \
		--preview-window 'up,60%,border-bottom,+{2}-5/5' \
		--bind 'enter:become(nvim {1} +{2})'
}
# <<< functions <<<
