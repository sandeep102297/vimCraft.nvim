local M = {}
M.init_vim_maps = function ()
	vim.g.mapleader = ' '
	vim.g.maplocalleader = ' '
	vim.g.completion_chain_complete_list = {
  		org = {
    			{ mode = 'omni'},
  		},
	}

	vim.cmd[[autocmd FileType org setlocal iskeyword+=:,#,+]]

	-- Set highlight on search
	vim.o.hlsearch = false

	-- Make line numbers default
	vim.wo.number = true

	-- Enable mouse mode
	vim.o.mouse = 'a'

	-- Sync clipboard between OS and Neovim.
	--  Remove this option if you want your OS clipboard to remain independent.
	--  See `:help 'clipboard'`
	vim.o.clipboard = 'unnamedplus'

	-- Enable break indent
	vim.o.breakindent = true

	-- Save undo history
	vim.o.undofile = true

	-- Case-insensitive searching UNLESS \C or capital in search
	vim.o.ignorecase = true
	vim.o.smartcase = true

	-- Keep signcolumn on by default
	vim.wo.signcolumn = 'yes'

	-- Decrease update time
	vim.o.updatetime = 250
	vim.o.timeoutlen = 300

	-- Set completeopt to have a better completion experience
	vim.o.completeopt = 'menuone,noselect'

	-- Set color scheme
	vim.cmd("colorscheme tokyonight")

	-- NOTE: You should make sure your terminal supports this
	vim.o.termguicolors = true
end
return M
