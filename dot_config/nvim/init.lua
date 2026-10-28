local vim = vim
local Plug = vim.fn['plug#']

local keymap = vim.api.nvim_set_keymap

-- command mode remaps
-- vim.keymap.set('c', 'o', 'e')
-- vim.api.nvim_create_autocmd('')
-- vim.call('cmap o e')

vim.o.number = true
vim.o.relativenumber = true

-- disable mouse
vim.opt.mouse = ""

vim.call('plug#begin')
	Plug('nvim-tree/nvim-web-devicons')
	Plug('nvim-tree/nvim-tree.lua')
	Plug('bluz71/vim-moonfly-colors')
	Plug('neovim/nvim-lspconfig')
	Plug('tpope/vim-surround')
	Plug('nvim-lualine/lualine.nvim')
	Plug('lervag/vimtex')
	Plug('nvim-neorg/neorg')
vim.call('plug#end')

-- theme
vim.cmd [[colorscheme moonfly]]
require('lualine').setup {
  options = { theme  = 'moonfly' }
}

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
