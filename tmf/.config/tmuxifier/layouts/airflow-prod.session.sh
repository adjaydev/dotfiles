session_root "~/projects/airflow"
if initialize_session "airflow-prod"; then
  new_window "server"
  new_window "zsh"
  select_window 1
  run_cmd "ssh root@168.119.104.124"
fi
finalize_and_go_to_session
