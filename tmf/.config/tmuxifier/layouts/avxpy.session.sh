session_root "~/projects/avx/avx-backend-python"
if initialize_session "avxpy"; then
  new_window "nvim"
  new_window "server"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
