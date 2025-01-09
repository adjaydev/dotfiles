session_root "~/projects/bvcm-backoffice-app"

if initialize_session "bvbo"; then
  new_window "editor"
  new_window "server"
  new_window "zsh"
  select_window 2
  run_cmd "source venv/bin/activate"
  run_cmd "cd BVCM_BO_TEST"
  run_cmd "python manage.py runserver"
  select_window 1
  run_cmd "open -na 'Google Chrome' --args --new-window --display=2 'http://localhost:8000'"
  run_cmd "v."
fi

finalize_and_go_to_session
