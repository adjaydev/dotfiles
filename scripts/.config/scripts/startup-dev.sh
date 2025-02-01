#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title startup dev
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description startup dev
# @raycast.author adjaythakoerdien
# @raycast.authorURL https://raycast.com/adjaythakoerdien

echo "Hello World!"

open -a "/Applications/Ghostty.app"
open -a "/Applications/Google Chrome.app"
open -na "Google Chrome" --args --new-window "http://grafana.adjay.dev"
open -na "Google Chrome" --args --new-window "http://planner.cloud.microsoft"
open -a "/Applications/Superhuman.app"
open -a "/Applications/Obsidian.app"
