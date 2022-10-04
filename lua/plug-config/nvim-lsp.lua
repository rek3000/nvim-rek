local lsp = require "lspconfig"
local coq = require "coq"

lsp.clangd.setup(coq.lsp_ensure_capabilities{})
lsp.jdtls.setup(coq.lsp_ensure_capabilities{cmd = {{ 
	"jdtls", 
	"-configuration", "/home/rek/.local/share/nvim/mason/packages/jdtls/config_linux", 
	"-data", "/home/rek/.cache/jdtls/workspace" 
	} }})
require'lspconfig'.jdtls.setup{}

