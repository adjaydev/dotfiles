eval "$(/opt/homebrew/bin/brew shellenv)"

export AIRFLOW_HOME="~/projects/airflow"
export EDITOR=nvim
export VISUAL="$EDITOR"
export XDG_CONFIG_HOME="$HOME/.config"

export PATH="$PATH:~/.local/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.config/tmuxifier/bin"
export PATH="$PATH:$HOME/.modular/pkg/packages.modular.com_mojo/bin"
export PATH="$PATH:$HOME/.local/opt/go/bin"
export PATH="$PATH:$HOME/.lmstudio/bin"
export PATH="$PATH:/Applications/Google\ Chrome.app/Contents/MacOS"
export PATH="$PATH:/opt/homebrew/opt/libpq/bin"

source ~/.config/scripts/devscripts.sh
source ~/.config/envvars

[[ -d $HOME/.pyenv/bin ]] && export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(thefuck --alias)"
eval "$(tmuxifier init -)"
eval "$(op completion bash)"
eval "$(zoxide init bash)"

[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
# gvm
[[ -s "~/.gvm/scripts/gvm" ]] && source "~/.gvm/scripts/gvm"
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# enter normal of enter without 'clear'
if [[ "$1" == "-nc" ]]; then
	enter-noc
else
	enter
fi

