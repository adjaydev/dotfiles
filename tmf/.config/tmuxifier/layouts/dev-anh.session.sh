session_root "~/projects/arjenhanssen_nl"
if initialize_session "dev-anh"; then
  new_window "nvim"
  new_window "server"
  select_window 2
  run_cmd "npm run dev"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
