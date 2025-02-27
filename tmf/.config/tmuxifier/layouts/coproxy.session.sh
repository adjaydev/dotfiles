session_root "~/Projects"
if initialize_session "coproxy"; then
  new_window "proxy prod"
  new_window "proxy build"
  new_window "terminal"
  select_window 1
  run_cmd "run-coproxy"
  select_window 2
  run_cmd "run-coproxy-build"
  select_window 3
  run_cmd "tmux detach"
fi
finalize_and_go_to_session
