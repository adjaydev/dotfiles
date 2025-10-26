#!/usr/bin/env bash

sketchybar --add item crypto right \
    --set crypto \
    update_freq=60 \
    script="$PLUGIN_DIR/crypto.sh" \
		label.color="0xff${color3:1}"


