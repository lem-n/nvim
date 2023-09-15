local M = {}

local util = require('lspconfig/util')

M.server_config = {
  gopls = {
    cmd = { 'gopls', 'serve' },
    filetypes = { 'go', 'gomod' },
    root_dir = util.root_pattern('go.work', 'go.mod', '.git'),
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
  },
  tsserver = {
    single_file_support = true,
  },
  lua_ls = {
    settings = {
      Lua = {
        workspace = {
          checkThirdParty = false,
        },
        diagnostics = {
          globals = { 'vim' },
          disable = { 'lowercase-global' },
        },
      },
    },
  },
  omnisharp_mono = {
    enable_roslyn_analyzers = true,
    enable_editor_config_support = true,
  },
}

M.formatters = {
  'stylua',
  'prettierd',
}

return M
