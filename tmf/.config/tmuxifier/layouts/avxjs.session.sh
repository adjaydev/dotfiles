session_root "~/projects/avx/avx-backend-js"
if initialize_session "avxjs"; then
  new_window "editor"
  new_window "server"
  new_window "lazygit"
  select_window 3
  run_cmd "lazygit"
	select_window 2
	run_cmd ""
  select_window 1
  run_cmd "nvim index.js"

fi
finalize_and_go_to_session
