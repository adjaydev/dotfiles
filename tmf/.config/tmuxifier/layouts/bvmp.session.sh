session_root "~/projects/bvcm-backoffice-mapper-go"
if initialize_session "bvmp"; then
  new_window "nvim"
  new_window "server"
  new_window "zsh"
  select_window 2
  run_cmd "go run ."
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
