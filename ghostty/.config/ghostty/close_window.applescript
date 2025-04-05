tell application "System Events"
    tell application "Ghostty" to activate
    delay 0.1 -- Give Ghostty a moment to activate
    keystroke "w" using command down
end tell
