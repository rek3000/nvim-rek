local opt = vim.opt
local cmd = vim.cmd

cmd "colorscheme tokyonight-moon"
opt.mouse="a"
cmd "let g:coq_settings = { 'auto_start': 'shut-up' }"
opt.tabstop=2
opt.shiftround = true
opt.shiftwidth=2
opt.relativenumber = true
opt.syntax = "enable"
opt.termguicolors = true
--opt.termguicolors = true
