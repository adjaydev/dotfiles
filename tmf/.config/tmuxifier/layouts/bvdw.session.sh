session_root "~/Documents/werk/BVCM/git/bvcm-daywize"
if initialize_session "bvdw"; then
  new_window "editor"
  new_window "server"
  select_window 2
  run_cmd "poetry run uvicorn main:app --port 8765 --reload"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
