require 'nvim-treesitter.configs'.setup {
  -- ensure_installed = { "c", "lua", "vimdoc", "query" },

  auto_install = true,

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = true,
  },
}
-- local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
-- parser_config.ejs = {
--   install_info = {
--     url = "https://github.com/tree-sitter/tree-sitter-embedded-template", -- local path or git repo
--     files = { "src/parser.c" },                                           -- note that some parsers also require src/scanner.c or src/scanner.cc
--     -- optional entries:
--     -- branch = "main", -- default branch in case of git repo if different from master
--     -- generate_requires_npm = false, -- if stand-alone parser without npm dependencies
--     -- requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
--   },
--   filetype = "ejs", -- if filetype does not match the parser name
-- }

-- local ft_to_parser = require "nvim-treesitter.parsers".filetype_to_parsername
-- ft_to_parser.ejs = "html"
vim.treesitter.language.register('html', 'ejs')
vim.filetype.add({
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})
