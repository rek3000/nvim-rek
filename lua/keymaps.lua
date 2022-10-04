local expr_opts = {noremap = true, expr = true, silent = true}
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Ctrl keys
map("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
map("n", "<C-s>", "<Cmd>w<CR>", opts)

-- Func keys
map("n", "<F9>", ":make run<CR><CR>", opts)

-- set tab hotkeys
	-- move  
map("n", "<tab>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<S-tab>", "<Cmd>BufferNext<CR>", opts)

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

