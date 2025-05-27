#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title startup bvcm
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description startup bvcm
# @raycast.author adjaythakoerdien
# @raycast.authorURL https://raycast.com/adjaythakoerdien

# Startup app for BVCM

apps=(
	"/Applications/Ghostty.app"
	"/Applications/utebrowser.app"
	"/Applications/Superhuman.app"
	"/Applications/Microsoft Teams.app"
	"/Applications/Microsoft Azure Storage Explorer.app"
	"/Applications/Obsidian.app"
	"/Applications/FileZilla.app"
)
for app in ${apps[@]}; do
	open -a "$app"
	sleep 0.1
done

source ./startup_bvcm_chrome.sh

