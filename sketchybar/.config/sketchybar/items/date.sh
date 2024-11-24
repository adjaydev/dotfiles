#!/usr/bin/env bash


sketchybar --add item time right \
  --set time update_freq=0 script='sketchybar --set $NAME label="󱑎 $(date "+%H:%M")u."'\
  padding_right=20    \
  label.color=$GREEN


sketchybar --add item wkdate right \
  --set wkdate update_freq=3600 script='sketchybar --set $NAME label=" $(date "+%d-%m") -"'\
  padding_right=10


sketchybar --add item wkdateicon right \
  --set wkdateicon update_freq=0 script='sketchybar --set $NAME label="󱨰 "'\
  padding_right=0 \
  label.color=$RED


sketchybar --add item wk right \
  --set wk update_freq=0 script='sketchybar --set $NAME label="wk $(date "+%W")"'\
  padding_right=10

