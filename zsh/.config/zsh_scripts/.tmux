#! /usr/bin/env sh
# Tmux

alias tl="tmux ls"

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


# Tmuxifier
tf() {
	tmuxifier $1 $2
}

ts() {
	tmuxifier s $1
}

tes(){
	tmuxifier es $1
}

tns(){
	tmuxifier ns $1
}

tfls() {
	tmuxifier ls
}

alias tsls="~/.config/zsh_scripts/tsls.sh"
alias tls="~/.config/zsh_scripts/tls.sh"
