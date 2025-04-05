#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title gosmall
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.author adjaythakoerdien
# @raycast.authorURL https://raycast.com/adjaythakoerdien

echo "Hello World!"

cp ~/dotfiles/ghostty/.config/ghostty/config_small ~/dotfiles/ghostty/.config/ghostty/config
echo "config transferred"

cd ~/dotfiles/ghostty/.config/ghostty/
./reload_config.sh

open /Applications/Ghostty.app
