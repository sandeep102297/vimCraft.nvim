
-- Start of VimCraft.nvim CONFIG


vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('init').init_lazy_vim()

require('vim_maps').init_vim_maps()

require('utils').init_keymaps()

require('utils').init_apis()

require('augroups')

require('utils').defer_function()


-- End of VimCraft.nvim Config
