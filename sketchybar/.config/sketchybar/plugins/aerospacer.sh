#!/usr/bin/env bash

source "$HOME/.config/sketchybar/colors.sh"

echo "called with $1"
echo "$FOCUSED_WORKSPACE"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=off background.color=$TRANSPARANT icon.color=$GREEN
else
    sketchybar --set $NAME background.drawing=off icon.color=$TRANSPARENT
fi
