session_root "~/projects/directpay_mailmerge"
if initialize_session "dpaymm"; then
  new_window "nvim"
  new_window "server"
  new_window "lzg"
  new_window "zsh"
  select_window 3
  run_cmd "lzg"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
