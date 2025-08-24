#!/usr/bin/env bash

source "$HOME/.config/sketchybar/colors.sh"
source "$HOME/.cache/wal/colors.sh"

echo "called with $1"
echo "$FOCUSED_WORKSPACE"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=off background.color=$TRANSPARANT icon.color="0xff${color1:1}"
else
    sketchybar --set $NAME background.drawing=off icon.color=$TRANSPARENT
fi
