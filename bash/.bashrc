# Ghostty shell integration for Bash. This should be at the top of your bashrc!
# if [ -n "${GHOSTTY_RESOURCES_DIR}" ]; then
#     builtin source "${GHOSTTY_RESOURCES_DIR}/shell-integration/bash/ghostty.bash"
# fi

# Welcome message
# PS1=""; clear; echo -e "\033[38;2;152;151;26mWake up, Neo...\033[0m"
# echo -e "\033[38;2;152;151;26mWake up, Neo...\033[0m"

eval "$(/opt/homebrew/bin/brew shellenv)"
# nerdfetch
export AIRFLOW_HOME="~/projects/airflow"
#
# Set default $EDITOR
export EDITOR=nvim
export VISUAL="$EDITOR"

export PATH="$HOME/.config/tmuxifier/bin:$PATH"
export PATH="$PATH:~/.local/bin"
export PATH="/Applications/Google\ Chrome.app/Contents/MacOS:$PATH"

source ~/.config/scripts/devscripts.sh

# Collect Online Proxy
alias run-coproxy="~/Documents/docs/proxy/./cloud-sql-proxy collectonline-symfony-4:europe-west1:collectonline-mysql \
--port=3308 \
--credentials-file=/Users/Adjay/Documents/docs/proxy/collectonline-symfony-4-8a0b846088b3.json"
alias run-coproxy-build="~/Documents/docs/proxy/./cloud-sql-proxy collectonline-symfony-4:europe-west1:collectonline-build \
--port=3309 \
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
	  echo "Error: A file name must be set, e.g. on \"filename here with spaces\"."
	  exit 1
	fi

	file_name=$(echo "$1" | tr ' ' '-')
	formatted_file_name=${file_name}_$(date "+%Y-%m-%d").md
	cd "~/personal/DeeezNotes/DeeezNotes" || exit
	touch "0-inbox/${formatted_file_name}"
	nvim "0-inbox/${formatted_file_name}"
}

# Tmuxifier
eval "$(tmuxifier init -)"

# Google Cloud SDK.
if [ -f '~/Projects/dev/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/adjaythakoerdien/Projects/dev/google-cloud-sdk/path.zsh.inc'; fi

# Enable shell command completion for gcloud.
if [ -f '~/Projects/dev/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/adjaythakoerdien/Projects/dev/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

export NVM_DIR="/opt/homebrew/opt/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# op 1password
# eval "$(op completion zsh)"; compdef _op op

# Zoxide
eval "$(zoxide init bash)"

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

source ~/perl5/perlbrew/etc/bashrc

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/adjaythakoerdien/.lmstudio/bin"

# autoload -Uz compinit; compinit

# [[ -s "~/.gvm/scripts/gvm" ]] && source "~/.gvm/scripts/gvm"
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# pnpm
export PNPM_HOME="/Users/Adjay/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

if [ -f ~/.dircolors ]; then
    eval "$(gdircolors -b ~/.dircolors)"
fi

# enter normal of enter without 'clear'
if [[ "$1" == "-nc" ]]; then
	enter-noc
else
	enter
fi

