session_root "~/projects/dev-heiloo"
if initialize_session "dev-heiloo"; then
  new_window "nvim"
  new_window "server"
  new_window "zsh"
  new_window "db"
  select_window 4  # window db
  run_cmd "v."
  select_window 2  # window server
  run_cmd "source venv/bin/activate"
  select_window 1  # window nvim
  run_cmd "v."
fi
finalize_and_go_to_session
