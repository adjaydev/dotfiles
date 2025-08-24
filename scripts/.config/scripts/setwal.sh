#!/usr/bin/env bash

setwal() {
	wal -i $1 -n
	source /Users/adjaythakoerdien/.cache/wal/colors.sh
	sketchybar --reload
	brew services restart borders
}
