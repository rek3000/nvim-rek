vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { "catppuccin/nvim", as = "catppuccin" }
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use ('nvim-treesitter/playground')
    use ('theprimeagen/harpoon')
    use ('mbbill/undotree')
    use ('tpope/vim-fugitive')

    -- LANGUAGE SERVER
    use { 'ms-jpq/coq_nvim', branch = 'coq'}
    use { 'ms-jpq/coq.artifacts', branch = 'artifacts'}
    use { 'ms-jpq/coq.thirdparty', branch = '3p'}
    
    use {'neovim/nvim-lspconfig'}
    use { 'williamboman/mason.nvim'}
    use { 'williamboman/mason-lspconfig.nvim'}


    use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }
    use {'norcalli/nvim-colorizer.lua'}
end)
