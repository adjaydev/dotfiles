session_root "~/projects/avx/avx-herinspect"
if initialize_session "avxher"; then
  new_window "nvim"
  new_window "server"

  select_window 2
  run_cmd "ng serve --port 4220"

  select_window 1
  run_cmd "open -na 'Google Chrome' --args --new-window --display=2 'http://localhost:4220'"
  run_cmd "v."
fi
finalize_and_go_to_session
