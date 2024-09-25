# Brew

echo "Installing ohmyzsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Brew Cask

echo "Installing all brew install --cask"
brew install --cask nikitabobko/tap/aerospace
brew install --cask kitty
brew install --cask raycast
brew install --cask jetbrains-toolbox
brew install --cask obsidian
brew install --cask obs
brew install --cask superhuman
brew install --cask rapidapi
brew install --cask elgato-camera-hub
brew install --cask elgato-stream-deck
brew install --cask elgato-control-center
brew install --cask sublime-text
brew install --cask alacritty
brew install --cask tg-pro
brew install --cask devtoys
brew install --cask logi-options-plus
brew install --cask tigervnc-viewer
brew install --cask teamviewer
brew install --cask visual-studio-code
brew install --cask affinity-designer
brew install --cask google-cloud-sdk
brew install --cask google-chrome


## Brew

echo "Installing all brew intall"
brew install azure-cli
brew install bat
brew install biome
brew install btop
brew install cbonsai
brew install cfonts
brew install cmatrix
brew install cowsay
brew install ffmpeg
brew install fzf
brew install gh
brew install git
brew install go
brew install jq
brew install lazygit
brew install lua
brew install luajit
brew install modular
brew install neovim
brew install nerdfetch
brew install nvm
brew install pandoc
brew install poetry
brew install pyenv
brew install ripgrep
brew install ruff
brew install sesh
brew install sqlite
brew install starship
brew install stow
brew install telnet
brew install thefuck
brew install tmux
brew install tree-sitter
brew install zoxide
brew install amethyst
brew install docker
brew install bruno

echo "Installing rustup"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "Installing Tmuxifier"
git clone https://github.com/jimeh/tmuxifier.git ~/.config/tmuxifier

echo "Angular CLI"
npm install -g @angular/cli
