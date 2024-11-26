#!/usr/bin/env bash

sketchybar --add item time right \
  --set time \
  update_freq=20 \
  icon=" " \
  icon.padding_right=10 \
  icon.color=$GREEN \
  label="$(date '+%-H:%M')u." \
  script="$PLUGIN_DIR/date.sh" \
  padding_right=20 \
  label.color=$GREEN \
  --subscribe time system_woke


sketchybar --add item date right \
  --set date \
  label="$(LC_TIME=nl_NL.UTF-8 date '+%A %-d %b')" \
  padding_right=30 \
  label.color=$BLUE 


sketchybar --add item wkdateicon right \
  --set wkdateicon \
  icon="󰃮 " \
  icon.padding_right=10 \
  icon.color=$BLUE \
  label="wk $(date "+%W")" \
  padding_right=5 \
  label.color=$BLUE \
