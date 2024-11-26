#!/usr/bin/env sh

sketchybar  --add   item superhuman right \
            --set   superhuman \
                    update_freq=60 \
                    script="$PLUGIN_DIR/superhuman.sh" \
           --subscribe superhuman system_woke
