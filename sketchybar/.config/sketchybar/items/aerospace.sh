#!/usr/bin/env bash

sketchybar --add event aerospace_workspace_change
for sid in $(aerospace list-workspaces --monitor 1 --empty no); do
    sketchybar --add item space."$sid" left \
        --subscribe space."$sid" aerospace_workspace_change \
        --set space."$sid" \
        background.color=0x44ffffff \
        background.corner_radius=0 \
        background.height=10 \
        background.drawing=off \
        label.font.size=12.0 \
        label="$sid" \
        click_script="aerospace workspace $sid" \
        script="/Users/adjaythakoerdien/dotfiles/sketchybar/.config/sketchybar/plugins/aerospacer.sh $sid"
done

