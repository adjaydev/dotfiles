vim.g.mapleader = ' '

--Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>st', vim.cmd.Ex)
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- alternate file
vim.keymap.set('n', '<leader>U', ':e#<CR>')
vim.keymap.set('n', '<C-S-Y>', ':e#<CR>')

-- Undotree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Spell
-- vim.keymap.set('n', '<leader>w,', '<Cmd>normal z=<CR>', { desc = 'Spell: Suggestions' })

vim.keymap.set('n', '<leader>w,', function()
  vim.api.nvim_feedkeys('z=', 'n', true)
end, { desc = 'Spell: Suggestions' })

vim.keymap.set('n', '<leader>wy', '<Cmd>normal zg<CR>', { desc = 'Spell: Add word' })
vim.keymap.set('n', '<leader>wn', '<Cmd>normal ]s<CR>', { desc = 'Spell: Next word' })
vim.keymap.set('n', '<leader>wp', '<Cmd>normal [s<CR>', { desc = 'Spell: Previous word' })

-- greatest remap ever
vim.keymap.set('x', '<leader>p', '"_dP')

-- next greatest remap ever: asbjornHaland
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')

vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')

-- Obsidian new file from tenplate
vim.keymap.set('n', '<leader>on', ':ObsidianTemplate note template<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>')
vim.keymap.set(
  'n',
  '<leader>on',
  ':ObsidianTemplate note template<cr> :lua vim.cmd([[1,/^\\S/s/\\n\\{2,}/\\r\\r/g]])<cr>'
)

vim.keymap.set('n', '<leader>om', ':ObsidianTemplate meeting template<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>')
vim.keymap.set('n', '<leader>op', ':ObsidianTemplate project template<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>')

vim.keymap.set(
  'n',
  '<leader>ob',
  ':ObsidianTemplate bvtodo template<cr>:lua vim.cmd([[1,/^\\S/s/^\\n\\{2,}/\\r/]])<cr>'
)
-- Obsidian format remove date from title and replace
-- dashes with spaces
vim.keymap.set('n', '<leader>of', function()
  vim.cmd 's/\\(-\\|_\\([^_]*$\\)\\)/ /g' -- Replace hyphens and underscores with spaces
  vim.cmd 's/\\<\\w/\\u&/g' -- Capitalize words
end)

-- search for files in full vault
vim.keymap.set(
  'n',
  '<leader>os',
  ':Telescope find_files search_dirs={"/Users/adjaythakoerdien/personal/DeeezNotes/DeeezNotes"}<cr>'
)
vim.keymap.set(
  'n',
  '<leader>oz',
  ':Telescope live_grep search_dirs={"/Users/adjaythakoerdien/personal/DeeezNotes/DeeezNotes"}<cr>'
)

vim.keymap.set('n', '<leader>mp', ':PresentStart<CR>')

vim.keymap.set('n', '<leader>cp', function()
  vim.fn.setreg('+', vim.fn.expand '%:p')
end, { desc = 'Copy full file path' })

vim.keymap.set('n', '<leader>ts', ':Telescope lsp_document_symbols<CR>')

-- markdown
vim.keymap.set('n', '<leader>md', ':RenderMarkdown disable<CR>', { desc = 'Render[m]arkdwon [d]isable' })
vim.keymap.set('n', '<leader>ms', ':RenderMarkdown set<CR>', { desc = 'Render[m]arkdwon [s]et' })
