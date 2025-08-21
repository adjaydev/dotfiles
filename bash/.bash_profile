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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/Adjay/projects/gcloud/google-cloud-sdk/path.bash.inc' ]; then . '/Users/Adjay/projects/gcloud/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/Adjay/projects/gcloud/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/Adjay/projects/gcloud/google-cloud-sdk/completion.bash.inc'; fi
