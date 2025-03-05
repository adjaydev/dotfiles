session_root "~/projects/bvcm-backoffice-sftp"
if initialize_session "bvsftp"; then
  new_window "editor"
  new_window "server"
  new_window "lazygit"
  new_window "zsh"
  select_window 3
  run_cmd "lzg"
  select_window 2
  run_cmd "poetry run uvicorn main:app --reload --port 7788"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
