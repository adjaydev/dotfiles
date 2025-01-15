eval "$(/opt/homebrew/bin/brew shellenv)"
# nerdfetch
export ZSH="$HOME/.oh-my-zsh"
export AIRFLOW_HOME="~/projects/airflow"
#
# Set default $EDITOR
export EDITOR=nvim
export VISUAL="$EDITOR"

export PATH="$HOME/.config/tmuxifier/bin:$PATH"
export PATH="$PATH:~/.local/bin"
export PATH="/Applications/Google\ Chrome.app/Contents/MacOS:$PATH"



ZSH_THEME="robbyrussell"
plugins=(macos systemd thefuck tmux urltools)

source $ZSH/oh-my-zsh.sh
source ~/.config/zsh_scripts/.tmux
source ~/.config/scripts/devscripts.sh

# Collect Online Proxy
alias run-coproxy="~/Documents/docs/proxy/./cloud-sql-proxy collectonline-symfony-4:europe-west1:collectonline-mysql \
--port=3308 \
--credentials-file=/Users/Adjay/Documents/docs/proxy/collectonline-symfony-4-8a0b846088b3.json"
alias run-coproxy-build="~/Documents/docs/proxy/./cloud-sql-proxy collectonline-symfony-4:europe-west1:collectonline-build \
--port=3308 \
--credentials-file=/Users/Adjay/Documents/docs/proxy/collectonline-symfony-4-8a0b846088b3.json"

# The fuck
eval $(thefuck --alias)

# MODULAR & MOJO
export MODULAR_HOME="$HOME/.modular"
export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"export PYENV_ROOT="$HOME/.pyenv"

[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# FZF Config
function vzv() {
	fzf | xargs nvim
}

# New Obsidian note
function on() {
	if [ -z "$1" ]; then
	  echo "Error: A file name must be set, e.g. on \"the wonderful thing about tiggers\"."
	  exit 1
	fi

	file_name=$(echo "$1" | tr ' ' '-')
	formatted_file_name=${file_name}_$(date "+%Y-%m-%d").md
	cd "~/personal/DeeezNotes/DeeezNotes" || exit
	touch "0-inbox/${formatted_file_name}"
	nvim "0-inbox/${formatted_file_name}"
}


# Starship
eval "$(starship init zsh)"

# Tmuxifier
eval "$(tmuxifier init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/Projects/dev/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/adjaythakoerdien/Projects/dev/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/Projects/dev/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/adjaythakoerdien/Projects/dev/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

export NVM_DIR="/opt/homebrew/opt/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# op 1password
eval "$(op completion zsh)"; compdef _op op

# Zoxide
eval "$(zoxide init zsh)"

# GO

# Set default $EDITOR
export EDITOR=nvim
export VISUAL="$EDITOR"
export PATH=$PATH:$HOME/go/bin

# Load Angular CLI autocompletion.
# source <(ng completion script)

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

PATH="~/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="~/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="~/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"~/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=~/perl5"; export PERL_MM_OPT;

# export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
# export ANDROID_HOME="$HOME/Library/Android/sdk"
# export NDK_HOME="$ANDROID_HOME/ndk/$(ls -1 $ANDROID_HOME/ndk)"
# export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk" 
# export ANDROID_NDK_ROOT="$ANDROID_SDK_ROOT/ndk/28.0.12433566" 

export PATH=$PATH:$HOME/.local/opt/go/bin
export PATH=$PATH:$HOME/go/bin
