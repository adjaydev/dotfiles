session_root "~/projects/avx/avx-backend-go"
if initialize_session "avxgo"; then
  new_window "nvim"
  new_window "server"
  new_window "lazygit"
  new_window "zsh"
  select_window 3
  run_cmd "lzg"
  select_window 2
  run_cmd "go run ."
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
