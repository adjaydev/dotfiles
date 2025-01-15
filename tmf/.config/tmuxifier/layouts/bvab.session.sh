session_root "~/projects/bvcm-api-backend"
if initialize_session "bvab"; then
  new_window "nvim"
  new_window "server"
  new_window "zsh"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
