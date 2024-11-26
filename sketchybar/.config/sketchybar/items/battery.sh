#!/usr/bin/env bash

# sketchybar --add item battery right \
#     --set battery update_freq=300 \
#         label=" $(ioreg -l | grep '\"CurrentCapacity\" =' | awk -F '=' '{print $2}')%" \
#         padding_right=20

sketchybar --add item battery right \
    --set battery \
    update_freq=60 \
    script="$PLUGIN_DIR/battery.sh" \
    --subscribe battery system_woke power_source_change
