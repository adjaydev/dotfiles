#!/usr/bin/env bash

sketchybar --add item time right \
  --set time \
  update_freq=20 \
  icon.padding_right=10 \
  icon.color="0xff${color3:1}" \
  icon.size=18 \
  label="$(date '+%-H:%M')u." \
  script="$PLUGIN_DIR/date.sh" \
  padding_right=20 \
  label.color="0xff${color3:1}" \
  --subscribe time system_woke


# sketchybar --add item date right \
#   --set date \
#   icon="󰃮 " \
#   icon.padding_right=10 \
#   icon.color=$BLUE \
#   icon.size=22 \
#   label="$(date '+%-d')" \
#   padding_right=30 \
#   label.color=$BLUE 


# sketchybar --add item wkdateicon right \
#   --set wkdateicon \
#   icon="󰃮 " \
#   icon.padding_right=10 \
#   icon.color=$BLUE \
#   icon.size=18 \
#   label="wk $(date "+%W")" \
#   padding_right=5 \
#   label.color=$BLUE \
