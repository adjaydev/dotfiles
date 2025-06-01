if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"


# Added by Toolbox App
export PATH="$PATH:/Users/adjaythakoerdien/Library/Application Support/JetBrains/Toolbox/scripts"

. "$HOME/.cargo/env"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/adjaythakoerdien/.lmstudio/bin"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
   . $(brew --prefix)/etc/bash_completion
fi
