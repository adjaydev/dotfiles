#!/usr/bin/env bash

setwal() {
	wal -i $1 -n $2 $3
	source "$HOME/.cache/wal/colors.sh"
	$HOME/dotfiles/ghostty/.config/ghostty/themes/./wal_convert.sh
	wallpaper set $1
	sketchybar --reload
	brew services restart borders
	echo "All set!"
	echo "SHIFT+CMD+, to reload Ghostty."
	echo "Manually reload tmux.conf."
	sob -nc
}

setwal-rf() {
	recent=$(./recent.applescript)
	echo $recent

	wal -i "$recent" -n $1 $2
	source "$HOME/.cache/wal/colors.sh"
	$HOME/dotfiles/ghostty/.config/ghostty/themes/./wal_convert.sh
	wallpaper set "$recent"
	sketchybar --reload
	brew services restart borders
	echo "All set!"
	echo "SHIFT+CMD+, to reload Ghostty."
	echo "Manually reload tmux.conf."
	sob -nc

}

