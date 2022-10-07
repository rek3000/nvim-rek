return require('packer').startup(function(use)
	use {'wbthomason/packer.nvim'}
	use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}
	use {'andymass/vim-matchup', event = 'VimEnter'}
	use {
		'w0rp/ale',
		ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
		cmd = 'ALEEnable',
		config = 'vim.cmd[[ALEEnable]]'
	}
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use {'ms-jpq/coq_nvim', branch = 'coq'}
	use {'ms-jpq/coq.artifacts', branch = 'artifacts'}

	use { "williamboman/mason.nvim" }
	use {'williamboman/mason-lspconfig.nvim'}
	use {'neovim/nvim-lspconfig'}

	use {
		'romgrk/barbar.nvim',
		requires = {'kyazdani42/nvim-web-devicons'}
	}
	use {'feline-nvim/feline.nvim'}
	use {'glepnir/dashboard-nvim'}
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	-- THEMES
	use {'folke/tokyonight.nvim'}
	use {'dracula/vim', as = 'dracula'}

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
end)


