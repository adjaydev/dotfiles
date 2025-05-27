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
urls=(
	"http://bvcm.collectonline.eu"
	"http://bvcm.collectonline.eu"
	"http://grafana.bvcm.com"
	"http://synapse.bvcm.com"
	"http://planner.cloud.microsoft"
)
for url in ${urls[@]}; do
	open -na "$BROWSER" --args --target=window "$url"
	sleep 0.1
done

# BROWSER="Google Chrome"
# open -a "/Applications/Google Chrome.app"
# urls=(
# 	"http://bvcm.collectonline.eu"
# 	"http://bvcm.collectonline.eu"
# 	"http://grafana.bvcm.com"
# 	"http://synapse.bvcm.com"
# 	"http://planner.cloud.microsoft"
# )
# for url in ${urls[@]}; do
# 	open -na "$BROWSER" --args --new-window "$url"
# 	sleep 0.1
# done

