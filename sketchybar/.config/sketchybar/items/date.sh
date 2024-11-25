#!/usr/bin/env bash


sketchybar --add item time right \
  --set time update_freq=20 label="󱑎 $(date "+%H:%M")u." \
  padding_right=20    \
  label.color=$GREEN


sketchybar --add item wkdate right \
  --set wkdate update_freq=3600 label="$(date "+%d-%m")" \
  padding_right=20 \
  label.color=$BLUE


sketchybar --add item wkdateicon right \
  --set wkdateicon update_freq=0 label="󰃭 " \
  padding_right=5 \
  label.color=$BLUE


sketchybar --add item wk right \
  --set wk update_freq=0 label="wk $(date "+%W")" \
  padding_right=10 \
  label.color=$BLUE

