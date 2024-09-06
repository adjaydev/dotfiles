session_root "/Users/adjaythakoerdien/personal/python/mdown"
if initialize_session "md-python"; then
  new_window "editor"
  new_window "server"
  select_window 2
  run_cmd "poetry run uvicorn main:app --port 9898 --reload"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
