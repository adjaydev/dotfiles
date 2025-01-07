#! /usr/bin/env sh

selected=`tmux ls | sort -r | fzf | cut -d ':' -f 1`
if [[ -n $selected ]]; then
	tmux attach -t $selected
else
	echo "[no session selected]"
	exit 0
fi
