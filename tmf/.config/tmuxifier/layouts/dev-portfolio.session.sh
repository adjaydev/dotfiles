session_root "~/projects/portfolio"
if initialize_session "dev-portfolio"; then
  new_window "nvim"
  new_window "server"
  new_window "lzg"
  new_window "zsh"
  select_window 3
  run_cmd "lzg"
  select_window 2
  run_cmd "ng serve --port 4400"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
