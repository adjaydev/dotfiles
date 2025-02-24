session_root "~/projects/test/templates"
if initialize_session "bvtemplates"; then
  new_window "nvim"
  new_window "server"
  new_window "zsh"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
