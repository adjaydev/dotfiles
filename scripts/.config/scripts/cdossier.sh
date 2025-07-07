#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title cdossier
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.author adjaythakoerdien
# @raycast.authorURL https://raycast.com/adjaythakoerdien
#
# @raycast.argument1 { "type": "text", "placeholder": "Enter ID" }

ID=$1
open -na "/opt/homebrew/bin/qutebrowser" --args --target=window "https://c2c.collectonline.eu/dossier/view/$ID"
