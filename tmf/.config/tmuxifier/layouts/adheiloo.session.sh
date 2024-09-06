session_root "/Users/adjaythakoerdien/Documents/werk/git/heiloo-vitaal"
if initialize_session "adheiloo"; then
  new_window "editor"
  new_window "server"
  select_window 2
  run_cmd "source venv/bin/activate"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
