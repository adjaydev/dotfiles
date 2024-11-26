#!/usr/bin/env sh


sketchybar --add item calendarEvent right \
    --set calendarEvent \
    label="$(icalbuddy -n -nc -b "" -iep "title" -po "title" -tf "%H:%M" -df "%Y-%m-%d" eventsToday | head -n 1)" \
    padding_right=20 \
    label.color=$GREY


sketchybar --add item calendarTime right \
    --set calendarTime \
    update_freq=60 \
    script="$PLUGIN_DIR/calerdar.sh" \
    icon="󰃭 " \
    icon.color=$GREY \
    icon.padding_right=10 \
    label="$(icalbuddy -n -nc -b "" -iep "datetime" -po "datetime" -tf "%H:%M" -df "%Y-%m-%d" eventsToday | head -n 1):" \
    padding_right=10 \
    label.color=$GREY
