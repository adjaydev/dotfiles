session_root "~/projects/avx/avx-backend-go"
if initialize_session "avxgo"; then
  new_window "nvim"
  run_cmd "v."
fi
finalize_and_go_to_session
