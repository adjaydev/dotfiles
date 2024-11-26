#!/bin/bash


sketchybar --set calendarEvent \
    label="$(icalbuddy -n -nc -b "" -iep "title" -po "title" -tf "%H:%M" -df "%Y-%m-%d" eventsToday | head -n 1)"

sketchybar --set calendarTime \
  label="$(icalbuddy -n -nc -b "" -iep "datetime" -po "datetime" -tf "%H:%M" -df "%Y-%m-%d" eventsToday | head -n 1):"
