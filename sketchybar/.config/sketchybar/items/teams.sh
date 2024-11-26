#!/usr/bin/env sh

sketchybar  --add   item teams right \
            --set   teams \
                    update_freq=10 \
                    script="$PLUGIN_DIR/teams.sh" \
                    background.padding_left=10  \
                    padding_right=10 \
           --subscribe teams system_woke
