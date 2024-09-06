session_root "/Users/adjaythakoerdien/personal/rabbitmq/pika"
if initialize_session "rabbitpika"; then
  new_window "editor"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
