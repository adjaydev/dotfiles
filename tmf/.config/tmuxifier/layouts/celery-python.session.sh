session_root "~/projects/celery-python"
if initialize_session "celery-python"; then
  new_window "editor"
  new_window "servers"
  select_window 2
  split_v 10
  split_h 50
  select_pane 0
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
