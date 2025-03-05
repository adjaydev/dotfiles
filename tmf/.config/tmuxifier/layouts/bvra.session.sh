session_root "~/projects/test/rust-azure"
if initialize_session "bvra"; then
  new_window "editor"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
