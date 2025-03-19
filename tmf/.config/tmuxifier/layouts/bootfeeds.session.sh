session_root "~/projects/bootdev/feeds"
if initialize_session "bootfeeds"; then
  new_window "nvim"
  new_window "server"
  new_window "lazygit"
  new_window "zsh"
  select_window 3
  run_cmd "lazygit"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
