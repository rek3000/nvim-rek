return {
  {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require 'nvim-treesitter.configs'.setup {
        auto_install = true,
        hightlight = {
          enable = true,
          additional_vim_regex_hightlighting = true,
        },
      }
      
      vim.filetype.add({
        pattern = { [".*/hypr/.*%.conf"] = "hyprland" },
      })
    end,
  }
}
