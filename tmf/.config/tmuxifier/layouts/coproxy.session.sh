session_root "~/Projects"
if initialize_session "coproxy"; then
  new_window "terminal"
  new_window "terminal2"
  select_window 1
  run_cmd "run-coproxy"
  select_window 2
  run_cmd "tmux detach"
fi
finalize_and_go_to_session
