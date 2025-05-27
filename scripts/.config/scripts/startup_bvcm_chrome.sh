#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title startup bvcm chrome
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description startup bvcm chrome
# @raycast.author adjaythakoerdien
# @raycast.authorURL https://raycast.com/adjaythakoerdien

# BROWSER="Google Chrome"
BROWSER="qutebrowser"

# open -a "/Applications/Ghostty.app"
# open -a "/Applications/Google Chrome.app"

open -na "$BROWSER" --args --target=window "http://bvcm.collectonline.eu"
sleep 0.1
open -na "$BROWSER" --args --target=window "http://bvcm.collectonline.eu"
sleep 0.1
open -na "$BROWSER" --args --target=window "http://grafana.bvcm.com"
sleep 0.1
open -na "$BROWSER" --args --target=window "http://synapse.bvcm.com"
sleep 0.1
open -na "$BROWSER" --args --target=window "http://planner.cloud.microsoft"
