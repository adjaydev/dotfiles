session_root "/Users/adjaythakoerdien/Documents/werk/BVCM/git/bvcm-api-connector"
if initialize_session "bvapi"; then
  new_window "editor"
  new_window "server"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
