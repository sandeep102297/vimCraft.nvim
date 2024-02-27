return {
   {
     -- Highlight, edit, and navigate code
     'nvim-treesitter/nvim-treesitter',
     dependencies = {
       'nvim-treesitter/nvim-treesitter-textobjects',
     },
     build = ':TSUpdate',
     init = function ()
      require('nvim-treesitter.configs').setup {
        highlight = {
            enable = true,
        },
        ensure_installed = {'org'}, -- Or run :TSUpdate org
      }
    end
   },

}
