session_root "/Users/adjaythakoerdien/Documents/werk/BVCM/git/bvcm-datawarehouse-2024/bvcm-warehouse-2024"
if initialize_session "bvdw24"; then
  new_window "editor"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
