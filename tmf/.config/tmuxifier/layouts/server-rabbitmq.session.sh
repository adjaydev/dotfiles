if initialize_session "server-rabbitmq"; then
  new_window "rabbitmq-vm"
  run_cmd "ssh functioneelbeheer@4.231.18.84"
fi
finalize_and_go_to_session
