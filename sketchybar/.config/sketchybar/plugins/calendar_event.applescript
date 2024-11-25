tell application "Agenda"
  set today to current date
  set todaysEvents to every event of every calendar whose start date today and start date < today + 1 * days

  if todaysEvents {} then
    set nextEvent to first item of todaysEvents
    set eventTime to time string of start date of nextEvent
    set eventTitle to summary of nextEvent

    return "{\"name\": \"Agenda\", \"full_text\": \"" & eventTime & " " & eventTitle & "\"}"
  else
    return "{\"name\": \"Agenda\", \"full_text\": \"No events today\"}"
  end if
end tell
