-- Lazy.nvim package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- hop plugin
	{ "phaazon/hop.nvim" },
	{ -- NeoTree
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},
	{ "nvim-treesitter/nvim-treesitter" }, -- Treesitter
	{ "neovim/nvim-lspconfig" }, -- nvim-lspconfig
	{ "ellisonleao/gruvbox.nvim" }, -- Gruvbox Theme
	{ "hrsh7th/cmp-nvim-lsp" }, -- nvim-cmp autocomplite
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/nvim-cmp" },
	{ "williamboman/mason.nvim" }, -- Mason lsp manager
	{
		"nvim-telescope/telescope.nvim", -- Telescope
		tag = "0.1.2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "jose-elias-alvarez/null-ls.nvim" }, -- null-ls formatter
	{ "windwp/nvim-autopairs", event = "InsertEnter", opts = {} }, -- auto-pairs
	-- Bufferline tabs
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
	},
	{ "numToStr/Comment.nvim", lazy = false }, -- Comment.nvim comments
	{
		"glepnir/dashboard-nvim", -- Dashboard
		event = "VimEnter",
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
	{ "lewis6991/gitsigns.nvim" }, -- gitsigns
	{ "nvim-lualine/lualine.nvim" }, -- lualine
	{ "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } }, -- trouble
	-- LazyGit
	{ "kdheepak/lazygit.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
	-- Symbols outline
	{ "simrat39/symbols-outline.nvim" },
	{ "akinsho/toggleterm.nvim", version = "*", config = true }, -- Toggleterm
	-- { 'pocco81/auto-save.nvim' }, -- AutoSave
	-- Project Manager
	{ "ahmedkhalf/project.nvim" },
	-- Tabby (tabpages)
	-- {'nanozuki/tabby.nvim'}
})
