session_root "~/projects/homepage"
if initialize_session "homepage"; then
  new_window "nvim"
  new_window "server"
  new_window "lazygit"
  new_window "zsh"
  select_window 2
  run_cmd "pnpm dev"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
