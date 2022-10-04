vim.cmd([[
set notimeout
set encoding=utf-8
set mouse=a
let g:coq_settings = { 'auto_start': 'shut-up' }
set tabstop=2
set shiftwidth=2
set number relativenumber
syntax enable
colorscheme tokyonight-moon
]])
require("nvim-autopairs").setup {}
require('keymaps')
require('plugins')
require("mason").setup()
require("mason-lspconfig").setup()

require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})



local lsp = require "lspconfig"
local coq = require "coq"

lsp.clangd.setup(coq.lsp_ensure_capabilities{})
lsp.jdtls.setup(coq.lsp_ensure_capabilities{cmd = { { "jdtls", "-configuration", "/home/rek/.local/share/nvim/mason/packages/jdtls/config_linux", "-data", "/home/rek/.cache/jdtls/workspace" } }})
require'lspconfig'.jdtls.setup{}

-- status line
vim.opt.termguicolors = true
require('feline').setup()

require('dashboard-config')


require("nvim-treesitter.configs").setup {
	highlight = {
		enable = true,
		custom_captures = {
			["punctuation.bracket"] = "",
			["constructor"] = "",
			},
		},
		-- ...
		rainbow = {
			enable = true,
			-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
			extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
			--colors = {}, -- table of hex strings
			--termcolors = {} -- table of colour name strings
		}
	}
