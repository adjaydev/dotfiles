# Tmux
t() {
	tmux
}
tn() {
	tmux new -s $1
}
ta() {
	tmux attach -t $1
} 
tk() {
	tmux kill-session -t $1
} 
alias tls="tmux ls"

# Tmuxifier
tf() {
	tmuxifier $1 $2
}

ts() {
	tmuxifier s $1
}

tes{
	tmuxifier es $1
}

tns{
	tmuxifier ns $1
}

