session_root "~/projects/avx/avx-inspection"

if initialize_session "avx"; then
  new_window "editor"
  new_window "server"
  new_window "zsh"

  select_window 2
  run_cmd "ng serve --port 4201"

  select_window 1
  run_cmd "open -na 'Google Chrome' --args --new-window --display=2 'http://localhost:4201'"
  run_cmd "v."
fi

finalize_and_go_to_session
