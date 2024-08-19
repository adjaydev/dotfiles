session_root "~/Projects/rust/zero2prod/"

if initialize_session "rust"; then
  new_window "editor"
  new_window "server"
  select_window 1
  run_cmd "v."
fi

finalize_and_go_to_session
