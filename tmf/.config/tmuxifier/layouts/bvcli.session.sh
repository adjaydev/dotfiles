session_root "~/projects/bvcm-azure-cli"
if initialize_session "bvcli"; then
  new_window "editor"
  new_window "server"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
