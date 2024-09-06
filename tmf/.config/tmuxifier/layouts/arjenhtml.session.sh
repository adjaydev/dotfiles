session_root "/Users/adjaythakoerdien/Documents/werk/arjenhanssen/git/arjenhanssen_nl_html"
if initialize_session "arjenhtml"; then
  new_window "editor"
  select_window 1
  run_cmd "open -na 'Google Chrome' --args --new-window --display=2 '/Users/adjaythakoerdien/Documents/werk/arjenhanssen/git/arjenhanssen_nl_html/index.html'"
  run_cmd "v."
fi
finalize_and_go_to_session
