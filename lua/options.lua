af = require 'autofunc'
bo = require 'bufopt'

-->> window <<--

-- show file numbers
vim.wo.number = true
-- relative file numbers
vim.wo.relativenumber = true
vim.wo.nu = true
vim.wo.rnu = true
-- relative in normal mode, absolute in insert
af('BufEnter,FocusGained,InsertLeave', '*', function() vim.wo.relativenumber = true end)
af('BufLeave,FocusLost,InsertEnter',   '*', function() vim.wo.relativenumber = false end)
-- put numbers and signs in the same column
vim.wo.signcolumn = 'number'

vim.o.mouse = 'a'

-- searching
vim.o.gdefault = true
vim.o.incsearch = true
vim.o.smartcase = true
vim.o.ignorecase = true

-- split a new buffer to the right
vim.o.splitright = true
-- split new buffer to the bottom
vim.o.splitbelow = true
-- briefly jump to matching seperator
vim.o.showmatch = true
-- case insensitive search
vim.o.ignorecase = true
-- highlight searches
vim.o.hlsearch = true
-- copy-paste with system clipboard
vim.o.clipboard = 'unnamedplus'
-- background color for themes
vim.o.background = 'dark'
-- we support termguicolors
vim.o.termguicolors = true
-- abandon buffer when unloading
vim.o.hidden = true
-- some language servers dont like backup files
vim.o.backup = false
vim.o.writebackup = false
-- more space for coc messages
vim.o.cmdheight = 2
-- more responsiveness
vim.o.updatetime = 300
-- avoid some prompts?
vim.o.shortmess = vim.o.shortmess .. 'c'
-- scrolling "bounding"
vim.o.scrolloff = 5
vim.o.sidescrolloff = 5

-->> buffer options <<--
bo.tabstop = 2
-- implicit tab size
bo.softtabstop = 2
-- another kind of stabstop
bo.shiftwidth = 2
-- convert tabs to spaces
bo.expandtab = true
bo.autoindent = true

-- set language to english
vim.cmd('language en_US.utf-8')
-- vim.v.lang = 'en_US'

-- enable syntax highlighting
vim.cmd('syntax on')

-- enable filetype detection
vim.cmd('filetype plugin indent on')

-- Vimsence
vim.g.vimsence_client_id = '439476230543245312'
vim.g.vimsence_small_text = "NeoVim"
vim.g.vimsence_small_image = "neovim"
