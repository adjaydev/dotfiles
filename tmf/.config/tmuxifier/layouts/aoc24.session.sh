session_root "~/projects/advent-of-code-2024"
if initialize_session "aoc24"; then
  new_window "nvim"
  new_window "server"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
