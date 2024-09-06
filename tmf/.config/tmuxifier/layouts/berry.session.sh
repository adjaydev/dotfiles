session_root "~"
if initialize_session "berry"; then
  new_window "editor"
  select_window 1
fi
finalize_and_go_to_session
