session_root "~/projects/bvcm-wiki/wiki"
if initialize_session "bvwiki"; then
  new_window "editor"
  new_window "server"
  new_window "lazygit"
  new_window "zsh"
  select_window 3
  run_cmd "lzg"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
