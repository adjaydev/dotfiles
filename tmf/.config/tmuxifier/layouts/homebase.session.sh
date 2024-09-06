session_root "/Users/adjaythakoerdien/Projects/homebase/homebase-svelte"
if initialize_session "homebase"; then
  new_window "editor"
  new_window "server"
  select_window 2
  run_cmd "npm run dev --open"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
