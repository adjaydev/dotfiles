local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end
vim.opt.rtp:prepend(lazypath)

require 'settings.keymaps'
require 'settings.global_config'

require('lazy').setup 'plugins'

vim.cmd.colorscheme 'pywal16'
vim.cmd 'highlight Normal guibg=none'

-- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'LineNr', { bg = 'none' })

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

-- vim.api.nvim_set_hl(0, 'LspReferenceWrite', { fg = '#1d2021', bg = '#cba6f7', bold = false })
-- vim.api.nvim_set_hl(0, 'LspReferenceRead', { fg = '#1d2021', bg = '#f9e2af', bold = false })

-- "#f5e0dc"
-- "#f2cdcd"
-- "#f5e0dc"
-- "#f5c2e7"
-- "#cba6f7"
-- "#f38ba8"
-- "#eba0ac"
-- "#fab387"
-- "#f9e2af"
-- "#a6e3a1"
-- "#94e2d5"
-- "#89dceb"
-- "#74c7ec"
-- "#89b4fa"
-- "#b4befe"
