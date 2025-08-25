#!/usr/bin/env bash

setwal() {
	wal --saturate 1.0 -i $1 -n
	source /Users/adjaythakoerdien/.cache/wal/colors.sh
	/Users/adjaythakoerdien/dotfiles/ghostty/.config/ghostty/themes/./wal_convert.sh
	wallpaper set $1
	sketchybar --reload
	brew services restart borders
	echo "All set!"
	echo "SHIFT+CMD+, to reload Ghostty."
	echo "Manually reload tmux.conf."
	sob -nc
}
