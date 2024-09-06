session_root "/Users/adjaythakoerdien/Documents/werk/BVCM/git/test"
if initialize_session "bvtest"; then
  new_window "editor"
  new_window "server"
  select_window 2
  run_cmd "venv"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
