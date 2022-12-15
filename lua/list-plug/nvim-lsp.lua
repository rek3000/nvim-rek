local lsp = require "lspconfig"
local coq = require "coq"

lsp.rust_analyzer.setup(coq.lsp_ensure_capabilities())
lsp.jdtls.setup(coq.lsp_ensure_capabilities())
lsp.clangd.setup(coq.lsp_ensure_capabilities())
--lsp.sumneko_lua.setup(coq.lsp_ensure_capabilities())
lsp.pylsp.setup(coq.lsp_ensure_capabilities())

