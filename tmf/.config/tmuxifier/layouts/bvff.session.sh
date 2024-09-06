session_root "~/Documents/werk/BVCM/git/bvcm-fundflow"
if initialize_session "bvff"; then
  new_window "editor"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session

