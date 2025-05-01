vim.filetype.add({ extension = { ejs = "ejs" } })

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.local/state/nvim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

--vim.opt.updatetime = 50
vim.opt.colorcolumn = "90"
-- vim.opt.colorcolumn = "+1"
vim.g.mapleader = " "
vim.opt.laststatus = 3
vim.opt.fillchars:append({ vert = "║" })
vim.opt.fillchars:append({ horiz = "=" })
-- vim.opt.fillchars:append({ vert = "│" })
-- vim.api.nvim_set_hl(0, "VertSplit", { bg = "NONE", ctermbg = "NONE" })
