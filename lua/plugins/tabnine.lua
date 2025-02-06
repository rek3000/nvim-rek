return {
  'codota/tabnine-nvim',
  build = "./dl_binaries.sh",
  config = function()
    require('tabnine').setup({
      disable_auto_comment = true,
      accept_keymap = "<C-y>",
      dismiss_keymap = "<C-]>",
      debounce_ms = 800,
      suggestion_color = { gui = "#808080", cterm = 244 },
      exclude_filetypes = { "TelescopePrompt", "NvimTree" },
      log_file_path = "/home/rek/.local/state/tabnine/tabnine.log", -- absolute path to Tabnine log file
      ignore_certificate_errors = false,
    })
  end,
}
