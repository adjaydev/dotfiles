return {
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      plugins = {
        spelling = {
          enabled = true, -- Set to true to enable the spelling plugin
          -- You can customize other options for the spelling plugin here if needed.
          -- For example:
          -- max_suggestions = 10, -- Number of suggestions to show
          -- separator = ' ', -- Separator between key and suggestion
        },
      },
    },
    keys = {
      {
        '<leader>?',
        function()
          require('which-key').show { global = false }
        end,
        desc = 'Buffer Local Keymaps (which-key)',
      },
    },
  },
}
