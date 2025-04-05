return {
  {
    'hedyhli/markdown-toc.nvim',
    ft = 'markdown', -- Lazy load on markdown filetype
    cmd = { 'Mtoc' }, -- Or, lazy load on "Mtoc" command
    opts = {
      -- Your configuration here (optional)
    },
  },
  {
    'Kicamon/markdown-table-mode.nvim',
    config = function()
      require('markdown-table-mode').setup {
        filetype = {
          '*.md',
        },
        options = {
          insert = true, -- when typeing "|"
          insert_leave = true, -- when leaveing insert
          pad_separator_line = false, -- add space in separator line
          alig_style = 'default', -- default, left, center, right
        },
      }
    end,
  },
}
