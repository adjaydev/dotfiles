session_root "/Users/adjaythakoerdien/Documents/werk/BVCM/git/bvcm-azure-functions"
if initialize_session "bvaf"; then
  new_window "editor"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
