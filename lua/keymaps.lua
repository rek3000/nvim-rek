local expr_opts = {noremap = true, expr = true, silent = true}
--local map = vim.api.nvim_set_keymap
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local builtin = require('telescope.builtin')
--vim.g.mapleader = " "

-- Ctrl keys
map("n", "<C-n>", "<Cmd>NvimTreeToggle<CR>", opts)
map({'n', 'i', 'v'}, "<C-s>", "<Cmd>w<CR>", opts)

-- Func keys
map("n", "<F9>", ":make run<CR><CR>", opts)
map("n", "<F8>", "<Cmd>!gradle --console plain run<CR>", opts)

-- set tab hotkeys
-- move  
map("n", "<S-tab>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<tab>", "<Cmd>BufferNext<CR>", opts)

map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
map("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)

map("n", "<A-j>", "<Cmd>wincmd j<CR>", opts)
map("n", "<A-k>", "<Cmd>wincmd k<CR>", opts)
map("n", "<A-h>", "<Cmd>wincmd h<CR>", opts)
map("n", "<A-l>", "<Cmd>wincmd l<CR>", opts)

-- telescope builtin
map('n', 'ff', builtin.find_files, {})
map('n', 'fg', builtin.live_grep, {})
map('n', 'fb', builtin.buffers, {})
map('n', 'fh', builtin.help_tags, {})


