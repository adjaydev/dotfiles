#!/bin/bash

echo "w2a loaded"
web2app() {
	local app="/opt/homebrew/bin/qutebrowser"
	local url=$1
	open -na "$app" --args --target=window "$url"
}
