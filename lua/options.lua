local opt = vim.opt
local cmd = vim.cmd

opt.mouse="a"
cmd "let g:coq_settings = { 'auto_start': 'shut-up' }"
--vim.api.nvim_set_option("clipboard","unnamed")
opt.tabstop=2
opt.shiftround = true
opt.shiftwidth=2
opt.number = true
opt.relativenumber = true
opt.syntax = "enable"
opt.termguicolors = true
opt.scrolloff = 5
vim.g.mapleader = " "
