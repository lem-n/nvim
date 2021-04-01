local nvim_lsp = require 'lspconfig'

local on_attach = function(client)
  require 'completion'.on_attach(client)
end

-- TypeScript
nvim_lsp.tsserver.setup{ on_attach = on_attach }

-- Python
nvim_lsp.pyls.setup{ on_attach = on_attach}

-- Rust
nvim_lsp.rust_analyzer.setup({
  on_attach=on_attach,
    settings = {
      ["rust-analyzer"] = {
        assist = {
          importMergeBehavior = "last",
          importPrefix = "by_self",
        },
        cargo = {
          loadOutDirsFromCheck = true
        },
        procMacro = {
          enable = true
        },
      }
    }
})

-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)

