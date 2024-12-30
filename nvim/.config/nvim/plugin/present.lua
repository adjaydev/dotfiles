vim.api.nvim_create_user_command('PresentStart', function()
  require('custom.present').start_presentation()
end, {})
