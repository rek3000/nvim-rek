return {
  {
    'mfussenegger/nvim-lint',
    event = {
      "BufReadPre",
      "BufNewFile",
    },
    config = function()
      local lint = require("lint")
      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
      lint.linters_by_ft = {
        java = { "checkstyle" },
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
      }
      vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "InsertLeave" }, {
        group = lint_augroup,
        callback = function()
          -- try_lint without arguments runs the linters defined in `linters_by_ft`
          -- for the current filetype
          lint.try_lint()

          -- You can call `try_lint` with a linter name or a list of names to always
          -- run specific linters, independent of the `linters_by_ft` configuration
        end,

        vim.keymap.set("n", "<leader>ll", function()
          lint.try_lint()
        end, { desc = "Trigger linting for current file" })
      })
    end,
  }
}
