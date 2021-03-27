bind = require('binds')

vim.g.mapleader = ' '
vim.b.mapleader = ' '

bind('n', '<leader>w', ':w<CR>')
bind('n', '<leader>q', ':bd<CR>', 'noremap')

bind('n', '<C-left>', ':bp<CR>', 'noremap')
bind('n', '<C-right', ':bn<CR>', 'noremap')

bind('n', '<leader>h', ':wincmd h<CR>')
bind('n', '<leader>j', ':wincmd j<CR>')
bind('n', '<leader>k', ':wincmd k<CR>')
bind('n', '<leader>l', ':wincmd l<CR>')

bind('n', '<C-k>', '<Esc>', 'noremap')
bind('i', '<C-k>', '<Esc>', 'noremap')
bind('v', '<C-k>', '<Esc>', 'noremap')
bind('s', '<C-k>', '<Esc>', 'noremap')
bind('x', '<C-k>', '<Esc>', 'noremap')
bind('c', '<C-k>', '<Esc>', 'noremap')
bind('o', '<C-k>', '<Esc>', 'noremap')
bind('l', '<C-k>', '<Esc>', 'noremap')
bind('t', '<C-k>', '<Esc>', 'noremap')

-- Move by line
bind('n', 'j', 'gj')
bind('n', 'k', 'gk')

-- Easier line end/start jumps
bind('n', 'H', '^')
bind('n', 'L', '$')

-- Swap buffers fast
bind('n', '<leader><leader>', '<C-^>', 'noremap')

-- FZF Bingins
bind('n', '<C-p>', ':Files<CR>')
bind('n', '<C-o>', ':Buffers<CR>')
bind('n', '<C-l>', ':BLines<CR>')

