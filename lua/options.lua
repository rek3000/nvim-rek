local opt = vim.opt
local cmd = vim.cmd

cmd "colorscheme tokyonight-moon"
opt.mouse="a"
cmd "let g:coq_settings = { 'auto_start': v:true }"
vim.api.nvim_set_option("clipboard","unnamed")
opt.tabstop=2
opt.shiftround = true
opt.shiftwidth=2
opt.number = true
opt.relativenumber = true
opt.syntax = "enable"
opt.termguicolors = true
