session_root "/Users/adjaythakoerdien/Documents/werk/BVCM/git/bvcm-qdesk"
if initialize_session "bvqdesk"; then
  new_window "editor"
  new_window "server"
  run_cmd "poetry run uvicorn main:app --port 7788 --reload"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
