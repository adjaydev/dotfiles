vim.opt.conceallevel = 1

local function format_today()
  return os.date '%d-%m-%Y'
end

local function format_today_plus(days)
  return os.date('%d-%m-%Y', os.time() + days * 24 * 60 * 60)
end

return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = 'markdown',
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    disable_frontmatter = true,
    templates = {
      folder = 'templates',
      date_format = '%Y-%m-%d',
      time_format = '%H:%M',
      substitutions = {
        datum_vandaag = format_today,
        datum_vandaag_plus_0 = function()
          return format_today_plus(0)
        end,
        datum_vandaag_plus_1 = function()
          return format_today_plus(1)
        end,
        datum_vandaag_plus_2 = function()
          return format_today_plus(2)
        end,
        datum_vandaag_plus_3 = function()
          return format_today_plus(3)
        end,
        datum_vandaag_plus_4 = function()
          return format_today_plus(4)
        end,
        datum_vandaag_plus_5 = function()
          return format_today_plus(5)
        end,
        datum_vandaag_plus_6 = function()
          return format_today_plus(6)
        end,
        datum_vandaag_plus_7 = function()
          return format_today_plus(7)
        end,
        datum_vandaag_plus_8 = function()
          return format_today_plus(8)
        end,
        datum_vandaag_plus_9 = function()
          return format_today_plus(9)
        end,
      },
    },
    workspaces = {
      {
        name = 'personal',
        path = '~/personal/DeeezNotes',
      },
    },
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
  },
}
