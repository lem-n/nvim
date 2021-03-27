lsp = require('nvim_lsp')

-- TypeScript
lsp.tsserver.setup{ on_attach = require('completion').on_attach }


