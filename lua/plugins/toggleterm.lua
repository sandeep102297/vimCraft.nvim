return {
   'akinsho/toggleterm.nvim',
   lazy = false,
   -- 'tom-anders/telescope-vim-bookmarks.nvim'
   -- after = "telescope.nvim",
   config = function ()
      require('toggleterm').setup {
         open_mapping = [[<c-\>]],
         direction = "float",
         float_opts = {
            border = "curved",
            winblend = 1,
            title_pos = 'center',
         }

      }
      local Terminal  = require('toggleterm.terminal').Terminal
      local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
      local python = Terminal:new({ cmd = "python", hidden = true })

      function _LAZYGIT_TOGGLE()
         lazygit:toggle()
      end

      function _PYTHON_TOGGLE()
         python:toggle()
      end

      vim.api.nvim_set_keymap("n", "<leader>tg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", {noremap = true, silent = true})
      vim.api.nvim_set_keymap("n", "<leader>tp", "<cmd>lua _PYTHON_TOGGLE()<CR>", {noremap = true, silent = true})
   end
}
