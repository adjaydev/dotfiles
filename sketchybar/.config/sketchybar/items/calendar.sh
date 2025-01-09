#!/usr/bin/env sh

sketchybar --add item calendarEvent right \
    --set calendarEvent \
    label="$(icalbuddy -n -nc -b "" -iep "title" -po "title" -tf "%H:%M" -df "%Y-%m-%d" eventsToday | head -n 1)" \
    padding_right=30 \
    label.color=$GREY


sketchybar --add item calendarTime right \
    --set calendarTime \
    update_freq=60 \
    script="$PLUGIN_DIR/calendar.sh" \
    icon="󰃭 " \
    icon.color=$GREY \
    icon.padding_right=10 \
    icon.size=22 \
    label="$(icalbuddy -n -nc -b "" -iep "datetime" -po "datetime" -tf "%H:%M" -df "%Y-%m-%d" eventsToday | head -n 1):" \
    padding_right=10 \
    label.color=$GREY \
    --subscribe calendarTime system_woke

