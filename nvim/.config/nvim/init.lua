local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end
vim.opt.rtp:prepend(lazypath)

require 'settings.keymaps'
require 'settings.global_config'

require('lazy').setup 'plugins'

vim.cmd.colorscheme 'gruvbox'
-- vim.cmd 'hi Normal guibg=#000000'

-- TODO: sd

-- {
-- 	{
-- 	},	ui = {
-- 			icons = vim.g.have_nerd_font and {} or {
-- 				cmd = '⌘',
-- 				config = '🛠',
-- 				event = '📅',
-- 				ft = '📂',
-- 				init = '⚙',
-- 				keys = '🗝',
-- 				plugin = '🔌',
-- 				runtime = '💻',
-- 				require = '🌙',
-- 				source = '📄',
-- 				start = '🚀',
-- 				task = '📌',
-- 				lazy = '💤 ',
-- 			},
-- 		}
-- 	})

vim.lsp.config('ruff', {
  init_options = {
    settings = {
      -- Ruff language server settings go here
    },
  },
})

vim.lsp.enable 'ruff'
