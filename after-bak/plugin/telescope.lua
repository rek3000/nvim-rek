require('telescope').setup{
  pickers = {
    colorscheme = {
      enable_preview = true
    }
  },
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pt', builtin.tags, {})
vim.keymap.set('n', '<leader>:', builtin.commands, {})
vim.keymap.set('n', '<leader>km', builtin.keymaps, {})
vim.keymap.set('n', '<leader>K', builtin.man_pages, {})
-- vim.keymap.set('n', 'gD', builtin.lsp_declarations, {})
-- vim.keymap.set('n', 'gd', builtin.lsp_definitions, {})
-- vim.keymap.set('n', 'gi', builtin.lsp_implementations, {})
