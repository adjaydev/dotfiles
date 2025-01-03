session_root "~/projects/airflow"
if initialize_session "airflow-local"; then
  new_window "nvim"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
