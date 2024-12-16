vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- Colorscheme
	use("ayu-theme/ayu-vim")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use("folke/tokyonight.nvim")
	use("getomni/neovim")

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use({ "stevearc/dressing.nvim" })
	use("nvim-tree/nvim-web-devicons")
	use("lukas-reineke/indent-blankline.nvim")
	use("stevearc/conform.nvim")
	use("mfussenegger/nvim-lint")
	use({
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { "nvim-lua/plenary.nvim" },
	})
	use({
		"kdheepak/lazygit.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
	use("windwp/nvim-autopairs")
	use({ "nvim-lualine/lualine.nvim" })
	use({ "gbrlsnchs/telescope-lsp-handlers.nvim" })
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		requires = {
			"nvim-lua/plenary.nvim",
			use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }),
		},
	})
	use({
		"jiaoshijie/undotree",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			{ "neovim/nvim-lspconfig" },
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-path" },
			{ "f3fora/cmp-spell" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			{ "hrsh7th/cmp-buffer" },
			{ "L3MON4D3/LuaSnip" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lua" },
			{ "rafamadriz/friendly-snippets" },
		},
	})
	use("terrortylor/nvim-comment")
	use("andweeb/presence.nvim")
	use("norcalli/nvim-colorizer.lua")
	use({
		"stevearc/oil.nvim",
		config = function()
			require("oil").setup()
		end,
	})

	-- Specific for servers
	use("styled-components/vim-styled-components")
	use("Hoffs/omnisharp-extended-lsp.nvim")
	use({
		"akinsho/flutter-tools.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
	use({ "kaarmu/typst.vim", ft = { "typst" } })
	use("mfussenegger/nvim-jdtls")
end)
