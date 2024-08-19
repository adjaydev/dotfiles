session_root "~/.config/nvim"
if initialize_session "confv"; then
  new_window "editor"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
