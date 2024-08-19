session_root "/Users/adjaythakoerdien/Documents/werk/BVCM/git/bvcm-backoffice-sftp"
if initialize_session "bvsftp"; then
  new_window "editor"
  new_window "server"
  select_window 2
  run_cmd "poetry run uvicorn main:app --reload --port 7788"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
