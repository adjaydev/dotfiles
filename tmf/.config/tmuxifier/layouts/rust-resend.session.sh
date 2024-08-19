session_root "/Users/adjaythakoerdien/personal/rust-resend"
if initialize_session "rust-resend"; then
  new_window "editor"
  select_window 1
  split_h 80
  select_pane 0
  run_cmd "v."

fi
finalize_and_go_to_session
