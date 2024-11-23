session_root "~/projects/barcode-scanner"
if initialize_session "dev-barcode"; then
  new_window "nvim"
  new_window "server"
  new_window "zsh"
  select_window 2
  # run_cmd "npm run tauri dev"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
