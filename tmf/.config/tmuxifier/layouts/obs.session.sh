session_root "~/Documents/DeeezNotes"
if initialize_session "obs"; then
  new_window "editor"
  select_window 1
  run_cmd "v."
fi

finalize_and_go_to_session
