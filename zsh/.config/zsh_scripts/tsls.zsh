selected=`tmuxifier ls | fzf`
if [[ -n $selected ]]; then
	echo "[Starting session $selected]"
	tmuxifier s $selected
else
	echo "[No session selected]"
	exit 0
fi
