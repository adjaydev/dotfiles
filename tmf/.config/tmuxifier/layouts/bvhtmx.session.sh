session_root "/Users/adjaythakoerdien/personal/python/bvcm-htmx"
if initialize_session "bvhtmx"; then
  new_window "editor"
  new_window "server"
  run_cmd "poetry run uvicorn main:app --port 7788 --reload"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
