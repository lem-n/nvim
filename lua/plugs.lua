vf = require 'vfuncs'

vf.plug.begin(vf.stdpath('data') .. '/plugged')

-- Fish shell integration
vim.cmd("Plug 'dag/vim-fish'")
-- Start menu
vim.cmd("Plug 'mhinz/vim-startify'")
-- FZF
vim.cmd("Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }")
vim.cmd("Plug 'junegunn/fzf.vim'")
-- Misc
vim.cmd("Plug 'tpope/vim-surround'")
vim.cmd("Plug 'tpope/vim-commentary'")
vim.cmd("Plug 'jiangmiao/auto-pairs'")
vim.cmd("Plug 'junegunn/vim-slash'") -- Enhanced buffer search
vim.cmd("Plug 'machakann/vim-highlightedyank'")
vim.cmd("Plug 'hugolgst/vimsence'")
-- NERDTree
vim.cmd("Plug 'preservim/nerdtree'")
-- Themes
vim.cmd("Plug 'morhetz/gruvbox'")
vim.cmd("Plug 'itchyny/lightline.vim'")
-- Syntax
vim.cmd("Plug 'peitalin/vim-jsx-typescript'")
-- GIT
vim.cmd("Plug 'tpope/vim-fugitive'")
-- LSP
vim.cmd("Plug 'neovim/nvim-lspconfig'")
vim.cmd("Plug 'nvim-lua/completion-nvim'")
vim.cmd("Plug 'nvim-lua/lsp_extensions.nvim'")

vf.plug['end']()

require('plug.fzf')
require('plug.startify')
require('plug.lsp')
