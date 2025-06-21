# NOTE: Brew

## NOTE: Brew

echo "Installing all 'brew install'"
brew install bash
brew install coreutils
brew install azure-cli
brew install bat
brew install bat-extras
brew install biome
brew install btop
brew install cbonsai
brew install cfonts
brew install cowsay
brew install ffmpeg
brew install fzf
brew install gh
brew install git
brew install jq
brew install lazygit
brew install lua
brew install luajit
brew install neovim
brew install nerdfetch
brew install nvm
brew install pandoc
brew install poetry
brew install pyenv
brew install ripgrep
brew install ruff
brew install sqlite
brew install stow
brew install telnet
brew install thefuck
brew install tmux
brew install tree-sitter
brew install zoxide
brew install yazi
brew tap FelixKratz/formulae
brew install sketchybar
brew install borders
brew install onefetch
brew install borders
brew install lazydocker
brew install presenterm
brew install weasyprint

brew tap teamookla/speedtest
brew install speedtest


## NOTE: Brew Cask

echo "Installing all 'brew install --cask'"
brew install --cask nikitabobko/tap/aerospace
brew install --cask raycast
brew install --cask jetbrains-toolbox
brew install --cask obsidian
brew install --cask obs
brew install --cask superhuman
brew install --cask elgato-control-center
brew install --cask sublime-text
brew install --cask tg-pro
brew install --cask devtoys
brew install --cask logi-options-plus
brew install --cask tigervnc-viewer
brew install --cask affinity-designer
brew install --cask google-cloud-sdk
brew install --cask google-chrome
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-hack-nerd-font
brew install --cask docker
brew install --cask gimp
brew install --cask bruno
brew install --cask ghostty
brew install --cask font-sf-pro
brew install --cask 1password-cli
brew install --cask qutebrowser
brew install --cask whatsapp
brew install --cask vlc


echo "Installing rustup"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "Installing Tmuxifier"
git clone https://github.com/jimeh/tmuxifier.git ~/.config/tmuxifier

echo "Installing Angular CLI"
npm install -g @angular/cli

echo "Installing Graph Easy"
cpan install Graph::Easy

echo "Installing Gomatrix"
go install github.com/GeertJohan/gomatrix@latest
