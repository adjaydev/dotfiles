selected=`tmuxifier ls | sort -r | fzf`
if [[ -n $selected ]]; then
	echo "[starting session $selected]"
	tmuxifier s $selected
else
	echo "[no session selected]"
	exit 0
fi
