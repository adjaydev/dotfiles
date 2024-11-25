#!/bin/bash
# osascript ~/.config/sketchybar/plugins/calendar_event.applescript


# Get today's date in YYYY-MM-DD format
today=$(date "+%Y-%m-%d")

# Use `icalBuddy` to fetch today's events 
# (Make sure you have `icalBuddy` installed - it's part of the `calendar` package)
events=$(icalBuddy -ic "" -nrd -ea -b "" -nc -ps "| " -po "title,datetime" -df "%Y-%m-%d %H:%M:%S" -tf "%H:%M" eventsToday+1)

# If there are events today, extract the next one
if [[ -n "$events" ]]; then
  next_event=$(echo "$events" | head -n 1)
  event_time=$(echo "$next_event" | cut -d '|' -f 2)
  event_title=$(echo "$next_event" | cut -d '|' -f 1)

  # Format the output for SketchyBar
  echo "{\"name\": \"calendar\", \"full_text\": \"$event_time $event_title\"}"
else
  echo "{\"name\": \"calendar\", \"full_text\": \"No events today\"}"
fi
