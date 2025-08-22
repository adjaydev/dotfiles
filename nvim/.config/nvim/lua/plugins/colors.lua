return {
  -- catppuccin
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    -- config = function()
    --   require('catppuccin').setup({
    --     -- Catppuccin options here
    --   })
    -- end,
  },

  -- gruvbox
  {
    'ellisonleao/gruvbox.nvim',
    name = 'gruvbox',
    priority = 1000,
    config = function()
      require('gruvbox').setup {
        transparent = true,
        palette_overrides = {
          dark0 = '#1E2021',
        },
        overrides = {
          Function = { fg = '#fe8019', bg = 'NONE', bold = false },
          LspReferenceWrite = { fg = '#1d2021', bg = '#fe8019', bold = false },
          LspReferenceRead = { fg = '#1d2021', bg = '#98971a', bold = false },
        },
        italic = {
          strings = false,
          comments = false,
        },
        bold = true,
      }
      vim.filetype.add {
        extension = {
          ['http'] = 'http',
        },
      }
      local status_ok, markdown_colors = pcall(require, 'settings.markdown-colors')
      if not status_ok then
        vim.notify('Failed to load custom markdown colors', vim.log.levels.WARN)
        -- You could print the error: print(markdown_colors)
      end
    end, -- End of config function for Gruvbox
  }, -- End of Gruvbox plugin spec

  -- Colorizer
  {
    'NvChad/nvim-colorizer.lua',
    opts = {
      filetypes = { 'css', 'scss', 'javascript', 'html', 'toml', 'conf', 'sh', 'lua', 'markdown', 'python', 'json' },
      user_default_options = {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        names = false, -- "Name" codes like Blue or blue
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        AARRGGBB = true, -- 0xAARRGGBB hex codes
        rgb_fn = false, -- CSS rgb() and rgba() functions
        hsl_fn = false, -- CSS hsl() and hsla() functions
        css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn
        -- Available modes for `mode`: foreground, background,  virtualtext
        mode = 'background', -- Set the display mode.
        -- Available methods are false / true / "normal" / "lsp" / "both"
        -- True is same as normal
        tailwind = true, -- Enable tailwind colors
        -- parsers can contain values used in |user_default_options|
        sass = { enable = false, parsers = { 'css' } }, -- Enable sass colors
        virtualtext = '■',
        -- update color values even if buffer is not focused
        -- example use: cmp_menu, cmp_docs
        always_update = false,
      },
      -- all the sub-options of filetypes apply to buftypes
      buftypes = {},
    },
  },

  -- Tailwind
  {
    'themaxmarchuk/tailwindcss-colors.nvim',
    -- load only on require("tailwindcss-colors")
    module = 'tailwindcss-colors',
    -- run the setup function after plugin is loaded
    config = function()
      -- pass config options here (or nothing to use defaults)
      require('tailwindcss-colors').setup()
    end,
  },

  -- You can add more plugin specifications here following the same pattern
  -- {
  --   'other/plugin',
  --   config = function()
  --     -- configuration for other/plugin
  --   end,
  -- },
}
