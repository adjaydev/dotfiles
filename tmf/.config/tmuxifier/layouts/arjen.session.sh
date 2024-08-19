session_root "/Users/adjaythakoerdien/Documents/werk/arjenhanssen/git/arjenhanssen_nl"
if initialize_session "arjen"; then
  new_window "editor"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
