session_root "~/projects/gymdev"
if initialize_session "gymdev"; then
  new_window "frontend"
  new_window "ng server"
  new_window "backend"
  new_window "go server"
  new_window "zsh"
  select_window 2
  run_cmd "cd frontend; ng serve --port 4300"
  select_window 4
  run_cmd "cd backend; go run ."
  select_window 3
  run_cmd "cd backend; v."
  select_window 1
  run_cmd "cd frontend; v."
fi
finalize_and_go_to_session
