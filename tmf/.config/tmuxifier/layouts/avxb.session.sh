session_root "~/Documents/werk/advintex inspectie/git/advintex-inspection-backend"
if initialize_session "avxb"; then
  new_window "editor"
  new_window "server"
  select_window 1
  run_cmd "nvim index.js"
fi
finalize_and_go_to_session