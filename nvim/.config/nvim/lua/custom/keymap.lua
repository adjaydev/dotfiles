vim.keymap.set('n', '<leader>st', vim.cmd.Ex)
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Undotree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- greatest remap ever
vim.keymap.set('x', '<leader>p', '"_dP')

-- next greatest remap ever: asbjornHaland
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')

vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')

-- Obsidian new file from tenplate
vim.keymap.set('n', '<leader>on', ':ObsidianTemplate note template<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>')
vim.keymap.set('n', '<leader>on', ':ObsidianTemplate note template<cr> :lua vim.cmd([[1,/^\\S/s/\\n\\{2,}/\\r\\r/g]])<cr>')

vim.keymap.set('n', '<leader>om', ':ObsidianTemplate meeting template<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>')
vim.keymap.set('n', '<leader>op', ':ObsidianTemplate project template<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>')

-- Obsidian format remove date from title and replace
-- dashes with spaces
-- vim.keymap.set('n', '<leader>of', ':s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>')
-- vim.keymap.set('n', '<leader>of', ':s/_[^_]*$//')
-- vim.keymap.set('n', '<leader>of', ':s/-\|\(_[^_]*$\)//g | s/\<\w/\u&/g<cr>')

vim.keymap.set('n', '<leader>of', function()
  vim.cmd 's/\\(-\\|_\\([^_]*$\\)\\)/ /g' -- Replace hyphens and underscores with spaces
  vim.cmd 's/\\<\\w/\\u&/g' -- Capitalize words
end)

-- vim.keymap.set('n', '<leader>of', ":%s/\(-\)\(.*_.*\)/\=toupper(substitute(submatch(1),'-\'',' ','g'))")
--
-- search for files in full vault
vim.keymap.set('n', '<leader>os', ':Telescope find_files search_dirs={"/Users/adjaythakoerdien/personal/DeeezNotes/DeeezNotes"}<cr>')
vim.keymap.set('n', '<leader>oz', ':Telescope live_grep search_dirs={"/Users/adjaythakoerdien/personal/DeeezNotes/DeeezNotes"}<cr>')
