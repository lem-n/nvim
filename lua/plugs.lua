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
vim.cmd("Plug 'nvim-lua/popup.nvim'")
vim.cmd("Plug 'nvim-lua/plenary.nvim'")
vim.cmd("Plug 'nvim-telescope/telescope.nvim'")
-- NERDTree
vim.cmd("Plug 'preservim/nerdtree'")
-- Themes
vim.cmd("Plug 'morhetz/gruvbox'")
vim.cmd("Plug 'joshdick/onedark.vim'")
vim.cmd("Plug 'sainnhe/gruvbox-material'")
vim.cmd("Plug 'itchyny/lightline.vim'")
vim.cmd("Plug 'kyazdani42/nvim-web-devicons'")
-- Syntax
vim.cmd("Plug 'peitalin/vim-jsx-typescript'")
vim.cmd("Plug 'sheerun/vim-polyglot'")
-- vim.cmd("Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}")
-- GIT
vim.cmd("Plug 'tpope/vim-fugitive'")
-- LSP
vim.cmd("Plug 'neovim/nvim-lspconfig'")
vim.cmd("Plug 'nvim-lua/completion-nvim'")
vim.cmd("Plug 'nvim-lua/lsp_extensions.nvim'")
vim.cmd("Plug 'onsails/lspkind-nvim'")
vim.cmd("Plug 'kosayoda/nvim-lightbulb'")
vim.cmd("Plug 'RishabhRD/popfix'")
vim.cmd("Plug 'RishabhRD/nvim-lsputils'")

vf.plug['end']()

require('plug.fzf')
require('plug.startify')
require('plug.lsp')
require('lspkind').init({
  with_text = true,
  symbol_map = {
    Text = '',
    Method = 'ƒ',
    Function = '',
    Constructor = '',
    Variable = '',
    Class = '',
    Interface = 'ﰮ',
    Module = '',
    Property = '',
    Unit = '',
    Field = '',
    Value = '',
    Enum = '了',
    Keyword = '',
    Snippet = '﬌',
    Color = '',
    File = '',
    Folder = '',
    EnumMember = '',
    Constant = '',
    Struct = ''
  },
})

vim.cmd [[autocmd CursorHold * lua require'nvim-lightbulb'.update_lightbulb()]]

