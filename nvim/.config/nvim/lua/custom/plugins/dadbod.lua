-- return {
--   {
--     'kristijanhusak/vim-dadbod-ui',
--     dependencies = {
--       { 'tpope/vim-dotenv', lazy = true },
--       { 'tpope/vim-dadbod', lazy = true },
--       { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
--     },
--     cmd = {
--       'DBUI',
--       'DBUIToggle',
--       'DBUIAddConnection',
--       'DBUIFindBuffer',
--     },
--     init = function()
--       vim.g.db_ui_use_nerd_fonts = 1
--       vim.g.db_ui_winwidth = 80
--       vim.g.db_ui_show_help = 0
--       vim.g.db_ui_use_nvim_notify = 1
--       vim.g.db_ui_win_position = 'left'
--
--       require('which-key').register {
--         ['<leader>D'] = {
--           name = '󰆼 Db Tools',
--           u = { '<cmd>DBUIToggle<cr>', ' DB UI Toggle' },
--           f = { '<cmd>DBUIFindBuffer<cr>', ' DB UI Find buffer' },
--           r = { '<cmd>DBUIRenameBuffer<cr>', ' DB UI Rename buffer' },
--           l = { '<cmd>DBUILastQueryInfo<cr>', ' DB UI Last query infos' },
--         },
--       }
--     end,
--   },
-- }

return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true }, -- Optional
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.dbs = {
      {
        name = 'DEVDB',
        url = 'postgres://postgres:79WAG5FWF5ITwmSb35FxBtrazqAG05mPgd0eYYOIAs9hBfOOLPdcFfws4WCT9pkD@cloud.adjay.dev:3344',
      },
      {
        name = 'DEVDBIP',
        url = 'postgres://postgres:79WAG5FWF5ITwmSb35FxBtrazqAG05mPgd0eYYOIAs9hBfOOLPdcFfws4WCT9pkD@162.55.223.205:3344',
      },
    }
  end,
}
