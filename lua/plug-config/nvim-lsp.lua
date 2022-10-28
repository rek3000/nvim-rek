local lsp = require "lspconfig"
local coq = require "coq"

lsp.clangd.setup(coq.lsp_ensure_capabilities{})
lsp.jdtls.setup(coq.lsp_ensure_capabilities{})

require'lspconfig'.jdtls.setup{}

