#!/usr/bin/env bash


sketchybar --add item time right \
  --set time update_freq=1 script='sketchybar --set $NAME label="$(date "+%H:%M")u."'\
  padding_right=20    \
  label.color=$GREEN


sketchybar --add item wkdate right \
  --set wkdate update_freq=1 script='sketchybar --set $NAME label="wk $(date "+%W %d-%m")"'\
  padding_right=10    


