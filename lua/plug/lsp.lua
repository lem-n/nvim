local af = require 'autofunc'
local nvim_lsp = require 'lspconfig'
local tscope = require 'telescope.builtin'

local on_attach = function(client)
  require 'completion'.on_attach(client)
end

-- TypeScript
nvim_lsp.tsserver.setup{ on_attach = on_attach }

-- CSS
nvim_lsp.cssls.setup{
  on_attach = on_attach,
  cmd = { "css-languageserver", "--stdio" },
  filetypes = { "css", "scss", "less" },
  settings = {
    css = {
      validate = true
    },
    scss = {
      validate = true
    },
    less = {
      validate = true
    }
  }
}

-- Python
nvim_lsp.pyls.setup{ on_attach = on_attach }

-- Rust
nvim_lsp.rust_analyzer.setup{
  on_attach=on_attach,
  settings = {
    ["rust-analyzer"] = {
      assist = {
        importMergeBehavior = "last",
        importPrefix = "by_self"
      },
      cargo = {
        loadOutDirsFromCheck = true
      },
      procMacro = {
        enable = true
      },
    }
  }
}

-- C/C++
nvim_lsp.clangd.setup{ on_attach = on_attach }

-- C#/.NET
local pid = vim.fn.getpid()

-- Linux
-- local omnisharp_bin = "~/packages/omnisharp-roslyn/run"
-- Windows
local omnisharp_bin = "C:\\tools\\omnisharp-roslyn\\OmniSharp.exe"

nvim_lsp.omnisharp.setup{
  on_attach = on_attach,
  cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
}

-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)

vim.lsp.handlers['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
vim.lsp.handlers['textDocument/references'] = require'lsputil.locations'.references_handler
vim.lsp.handlers['textDocument/definition'] = require'lsputil.locations'.definition_handler
vim.lsp.handlers['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
vim.lsp.handlers['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
vim.lsp.handlers['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
vim.lsp.handlers['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
vim.lsp.handlers['workspace/symbol'] = require'lsputil.symbols'.workspace_handler

-- Auto commands
-- af('BufWritePre', 'buffer', function()
--   vim.lsp.buf.formatting_sync()
--   vim.cmd(':w<CR>')
-- end)

-- Completion options
-- vim.o.completeopt = 'menuone,noinsert,noselect'
