return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'hyper',
        config = {
          packages = { enable = true },
          footer = {},
        }
      }
    end,
  }
}
