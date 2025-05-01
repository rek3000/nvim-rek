return {
  {
    "aiken-lang/editor-integration-nvim",
    dependencies = {
      'neovim/nvim-lspconfig',
    },
    config = function()
      require 'lspconfig'.aiken.setup({})
    end,
  },
}
