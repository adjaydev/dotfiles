-- return {}

return {
  'ThePrimeagen/harpoon',
  branch = 'master',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader>hm', "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = 'Mark file with harpoon' },
    { '<leader>hn', "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = 'Go to next harpoon mark' },
    { '<leader>hp', "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = 'Go to previous harpoon mark' },
    { '<leader>ha', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = 'Show harpoon marks' },
    { '<leader>he', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = 'Show harpoon marks' },
    { '<leader>h1', "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = 'Harpoon to file 1' },
    { '<leader>h2', "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = 'Harpoon to file 2' },
    { '<leader>h3', "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = 'Harpoon to file 3' },
    { '<leader>h4', "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = 'Harpoon to file 4' },
    { '<leader>h5', "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", desc = 'Harpoon to file 5' },
    { '<leader>h6', "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", desc = 'Harpoon to file 6' },
    { '<leader>h7', "<cmd>lua require('harpoon.ui').nav_file(7)<cr>", desc = 'Harpoon to file 7' },
    { '<leader>h8', "<cmd>lua require('harpoon.ui').nav_file(8)<cr>", desc = 'Harpoon to file 8' },
    { '<leader>h9', "<cmd>lua require('harpoon.ui').nav_file(9)<cr>", desc = 'Harpoon to file 9' },

    { '<C-h>', "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = 'Mark file with harpoon' },
    { '<leader>hl', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = 'Show harpoon marks' },
    { '<F2>', "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = 'Harpoon to file 1' },
    { '<F3>', "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = 'Harpoon to file 2' },
    { '<F4>', "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = 'Harpoon to file 3' },
    { '<F5>', "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = 'Harpoon to file 4' },
    { '<F6>', "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", desc = 'Harpoon to file 5' },
    { '<F7>', "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", desc = 'Harpoon to file 6' },
    { '<F8>', "<cmd>lua require('harpoon.ui').nav_file(7)<cr>", desc = 'Harpoon to file 7' },
    { '<F9>', "<cmd>lua require('harpoon.ui').nav_file(8)<cr>", desc = 'Harpoon to file 8' },
    { '<F10>', "<cmd>lua require('harpoon.ui').nav_file(9)<cr>", desc = 'Harpoon to file 9' },
    { '<F11>', "<cmd>lua require('harpoon.ui').nav_file(9)<cr>", desc = 'Harpoon to file 10' },

    { '<C-1>', "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = 'Harpoon to file 1' },
    { '<C-2>', "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = 'Harpoon to file 2' },
    { '<C-3>', "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = 'Harpoon to file 3' },
    { '<C-4>', "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = 'Harpoon to file 4' },
    { '<C-5>', "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", desc = 'Harpoon to file 5' },
    { '<C-6>', "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", desc = 'Harpoon to file 6' },
    { '<C-7>', "<cmd>lua require('harpoon.ui').nav_file(7)<cr>", desc = 'Harpoon to file 7' },
    { '<C-8>', "<cmd>lua require('harpoon.ui').nav_file(8)<cr>", desc = 'Harpoon to file 8' },
    { '<C-9>', "<cmd>lua require('harpoon.ui').nav_file(9)<cr>", desc = 'Harpoon to file 9' },
  },
}
