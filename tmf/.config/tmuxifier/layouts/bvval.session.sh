session_root "~/projects/test/go_validator/"
if initialize_session "bvval"; then
  new_window "nvim"
  new_window "server"
  new_window "zsh"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session