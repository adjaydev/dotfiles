session_root "/Users/adjaythakoerdien/Documents/werk/BVCM/git/bvcm-datawarehouse-2023"
if initialize_session "bvdw23"; then
  new_window "editor"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
