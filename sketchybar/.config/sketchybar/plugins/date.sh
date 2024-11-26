#!/usr/bin/env sh

sketchybar --set time label="$(date '+%-H:%M')u." 
sketchybar --set date label="$(LC_TIME=nl_NL.UTF-8 date '+%A %-d %b')" 
sketchybar --set wkdateicon label="wk $(date "+%W")" 

