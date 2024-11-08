-- Bootstrap lazy nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '

require('lazy').setup({
  spec = { import = 'plugins' },
  performance = {
    rtp = {
      disabled_plugins = { 'man' }
    }
  }
})

require('settings').setup()

require('plugin_config')

-- Load modules
require('colors')
require('options')
require('keybinds')
require('autocmd')
require('lsp')
require('commands')
