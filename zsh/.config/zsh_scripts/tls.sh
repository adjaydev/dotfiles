#! /usr/bin/env sh

tmux ls > /dev/null 2>&1

if [ $? -ne 0 ]; then
	echo ">> no tmux server running"
	exit 1
fi

selected=`tmux ls | sort -r | fzf | cut -d ':' -f 1`

if [[ -n $selected ]]; then
	tmux attach -t $selected
else
	echo ">> no session selected"
	exit 0
fi
