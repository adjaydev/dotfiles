session_root "~/projects/test/loki"
if initialize_session "loki"; then
  new_window "loki"
  new_window "server"
  new_window "zsh"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
