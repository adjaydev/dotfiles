session_root "~/dotfiles"
if initialize_session "dot"; then
  new_window "nvim"
  new_window "zsh"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
