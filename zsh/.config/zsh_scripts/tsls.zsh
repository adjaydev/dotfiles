selected=`tmuxifier ls | fzf`
if [[ -n $selected ]]; then
	echo $selected
	tmuxifier s $selected
fi
