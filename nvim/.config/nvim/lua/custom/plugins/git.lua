return {
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>gg', ':G<CR>', {})
      vim.keymap.set('n', '<leader>gb', ':G blame<CR>', {})
      vim.keymap.set('n', '<leader>gp', ':G push<CR>', {})
      vim.keymap.set('n', '<leader>gs', ':G switch -c', {})
      vim.keymap.set('n', '<leader>gc', ':Telescope git_bcommits<CR>', {})
    end,
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()

      vim.keymap.set('n', '<leader>gh', ':Gitsigns preview_hunk<CR>', {})
      vim.keymap.set('n', '<leader>gt', ':Gitsigns toggle_current_line_blame<CR>', {})
    end,
  },
}
