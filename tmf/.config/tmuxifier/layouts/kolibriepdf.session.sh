session_root "~/projects/test/kolibrie-pdf"
if initialize_session "kolibriepdf"; then
  new_window "nvim"
  new_window "server"
  new_window "zsh"
  select_window 2
  run_cmd "poetry run uvicorn main:app --reload --port 6123"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
