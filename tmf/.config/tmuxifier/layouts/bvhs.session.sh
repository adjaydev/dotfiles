session_root "~/Documents/werk/BVCM/git/bvcm-hubspot-webhook"
if initialize_session "bvhs"; then
  new_window "editor"
  new_window "server"

  select_window 2
  run_cmd "source venv/bin/activate"
  run_cmd "uvicorn wsgi:app --port 1847 --reload"

  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
