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

open -a "/Applications/Google Chrome.app"
open -na "Google Chrome" --args --new-window "http://bvcm.collectonline.eu"
open -na "Google Chrome" --args --new-window "http://bvcm.collectonline.eu"
open -na "Google Chrome" --args --new-window "http://grafana.bvcm.com"
open -na "Google Chrome" --args --new-window "http://synapse.bvcm.com"
open -na "Google Chrome" --args --new-window "http://planner.cloud.microsoft"
