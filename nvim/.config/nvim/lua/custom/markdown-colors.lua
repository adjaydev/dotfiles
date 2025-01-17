-- Define custom highlight groups for each markdown heading level
vim.api.nvim_set_hl(0, '@markdown.red', { fg = '#fb4934', bold = false })
vim.api.nvim_set_hl(0, '@markdown.orange', { fg = '#fe8019', bold = false })
vim.api.nvim_set_hl(0, '@markdown.green', { fg = '#98971a', bold = true })
vim.api.nvim_set_hl(0, '@markdown.blue', { fg = '#458588', bold = true })
vim.api.nvim_set_hl(0, '@markdown.purple', { fg = '#b16286', bold = true })
vim.api.nvim_set_hl(0, '@markdown.yellow', { fg = '#d79921', bold = true })
vim.api.nvim_set_hl(0, '@markdown.aqua', { fg = '#689d6a', bold = true })

-- Link the custom highlight groups to Treesitter's markdown heading captures
vim.api.nvim_set_hl(0, '@markup.heading.1.markdown', { link = '@markdown.orange' })
vim.api.nvim_set_hl(0, '@markup.heading.2.markdown', { link = '@markdown.yellow' })
vim.api.nvim_set_hl(0, '@markup.heading.3.markdown', { link = '@markdown.aqua' })
vim.api.nvim_set_hl(0, '@markup.heading.4.markdown', { link = '@markdown.purple' })
vim.api.nvim_set_hl(0, '@markup.heading.5.markdown', { link = '@markdown.green' })
vim.api.nvim_set_hl(0, '@markup.heading.6.markdown', { link = '@markdown.blue' })
