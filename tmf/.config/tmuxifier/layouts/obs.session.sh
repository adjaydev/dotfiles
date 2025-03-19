session_root "~/personal/DeeezNotes"
if initialize_session "obs"; then
  new_window "editor"
  new_window "zsh"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
