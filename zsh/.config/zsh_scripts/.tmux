# Tmux
tx() {
	tmux
}
txn() {
	tmux new -s $1
}
txa() {
	tmux attach -t $1
} 
txk() {
	tmux kill-session -t $1
} 
alias txls="tmux ls"

# Tmuxifier
tmf() {
	tmuxifier $1 $2
}

