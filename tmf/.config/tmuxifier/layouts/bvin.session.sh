session_root "~/Documents/werk/BVCM/git/bvcm-intranet"
if initialize_session "bvin"; then
  new_window "frontend"
  new_window "backend"
  new_window "servers"

  select_window 3
  split_h 50
  select_pane 0
  run_cmd "npm install"
  run_cmd "ng serve"
  select_pane 1
  run_cmd "cd intranet-backend"
  run_cmd "source venv/bin/activate"
  run_cmd "uvicorn main:app --reload"

  select_window 2
  run_cmd "v."

  select_window 1
  run_cmd "v."

fi
finalize_and_go_to_session


