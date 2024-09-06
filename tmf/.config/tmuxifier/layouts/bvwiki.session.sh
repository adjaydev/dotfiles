session_root "~/Documents/werk/BVCM/git/bvcm-wiki/wiki"
if initialize_session "bvwiki"; then
  new_window "editor"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
