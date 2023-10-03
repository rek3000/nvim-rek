require("mason").setup()
-- require("luasnip.loaders.from_vscode").lazy_load()
local lsp = require("lspconfig")

vim.g.coq_settings = { auto_start = true }

local coq = require("coq")

lsp.lua_ls.setup(coq.lsp_ensure_capabilities()) 
lsp.html.setup(coq.lsp_ensure_capabilities()) 
lsp.cssls.setup(coq.lsp_ensure_capabilities()) 
-- lsp.ltex.setup(coq.lsp_ensure_capabilities()) 
-- lsp.quick_lint_js.setup(coq.lsp_ensure_capabilities()) 

require("coq_3p") {
  { src = "builtin/css"     },
  { src = "builtin/html"    },
  { src = "builtin/js"      },
}



