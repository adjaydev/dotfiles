session_root "~/projects/avx/avx-herinspectie"
if initialize_session "avxh"; then

  new_window "editor"
  new_window "server"

  select_window 2
  run_cmd "ng serve --port 4202"

  select_window 1
  run_cmd "open -na 'Google Chrome' --args --new-window --display=2 'http://localhost:4202'"
  run_cmd "v."

fi
finalize_and_go_to_session
