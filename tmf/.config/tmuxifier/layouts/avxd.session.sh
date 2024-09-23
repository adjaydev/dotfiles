session_root "~/projects/avx/avx-docx-functions"
if initialize_session "avxd"; then
  new_window "editor"
  new_window "server"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
