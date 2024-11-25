#!/usr/bin/env sh

sketchybar  --add   item superhuman right \
            --set   superhuman \
                    update_freq=180 \
                    script="$PLUGIN_DIR/superhuman.sh" \
           --subscribe superhuman system_woke
