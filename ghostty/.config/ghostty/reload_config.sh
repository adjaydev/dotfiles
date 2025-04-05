cd ~/dotfiles/ghostty/.config/ghostty/
osascript reload_config.applescript
echo "config reloaded"
echo "restarting terminal"
osascript close_window.applescript
