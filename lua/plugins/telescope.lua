return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      "nvim-lua/plenary.nvim",
      "debugloop/telescope-undo.nvim",
    },
  },
  {
    'andrew-george/telescope-themes',
    config = function()
      tele = require('telescope')
      tele.load_extension('themes')
      tele.load_extension("undo")
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>pf', function()
        builtin.find_files({ hidden = true })
      end)
      vim.keymap.set('n', '<C-p>', builtin.git_files, {})
      vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") });
      end)
      vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>pt', builtin.tags, {})
      vim.keymap.set('n', '<leader>:', builtin.commands, {})
      vim.keymap.set('n', '<leader>km', builtin.keymaps, {})
      vim.keymap.set('n', '<leader>K', builtin.man_pages, {})
      vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
    end,
  }
}
