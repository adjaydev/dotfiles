session_root "/Users/adjaythakoerdien/Projects/rust/rs-polars"
if initialize_session "rs-polars"; then
  new_window "editor"
  new_window "server"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
