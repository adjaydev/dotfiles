session_root "~/projects/test/"
if initialize_session "test"; then
  new_window "nvim"
  new_window "server"
  new_window "lzg"
  select_window 4
  run_cmd "lzg"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
