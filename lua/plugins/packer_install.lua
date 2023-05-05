vim.cmd([[packadd packer.nvim]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	max_jobs = 50,
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
		prompt_border = "rounded", -- Border style of prompt popups.
	},
})

return require("packer").startup(function()
	-- For updating packer
	use("wbthomason/packer.nvim")

	-- Gruvbox Theme
	use({
		"morhetz/gruvbox",
		config = function()
			vim.cmd.colorscheme("gruvbox")
		end,
	})

	-- LSP Server
	use("neovim/nvim-lspconfig")

	-- LSP Progress
	use({
		"j-hui/fidget.nvim",
		config = function()
			require("fidget").setup({
				text = {
					spinner = "star",
					commenced = "Запускаю котанов😺😺😺😺",
					completed = "Котаны готовы автодополнять😺",
				},
				align = {
					bottom = false,
				},
			})
		end,
	})

	use({
		"ray-x/navigator.lua",
		requires = {
			{ "ray-x/guihua.lua", run = "cd lua/fzy && make" },
			{ "neovim/nvim-lspconfig" },
		},
		config = function()
			require("navigator").setup()
		end,
	})

	-- Menu for LSP Troubles
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
		end,
	})

	-- Structur for LSP
	use({
		"simrat39/symbols-outline.nvim",
		config = function()
			require("plugins/symbols-outline")
		end,
	})

	-- Servers Installer for LSP
	use({
		"williamboman/nvim-lsp-installer",
		config = function()
			require("plugins/lsp-installer")
		end,
	})

	use({
		"SmiteshP/nvim-navic",
		requires = "neovim/nvim-lspconfig",
	})

	-- Autocomplite
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-emoji",
			"hrsh7th/cmp-nvim-lsp-signature-help",
			"hrsh7th/cmp-nvim-lua",
		},
		config = function()
			require("plugins/cmp")
		end,
	})

	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- Icons for autocomplit
	use({
		"onsails/lspkind-nvim",
		config = function()
			require("plugins/lspkind")
		end,
	})

	-- Statuslines
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function()
			require("plugins/lualine")
		end,
	})

	-- Comments
	use({
		"b3nj5m1n/kommentary",
		config = function()
			require("kommentary.config").configure_language("typescript", {
				single_line_comment_string = "//",
				multi_line_comment_strings = { "/*", "*/" },
			})
		end,
	})

	-- Highlighting
	use({
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("plugins/tree-sitter")
		end,
	})

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Statusbar for buffers
	use({
		"akinsho/bufferline.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("plugins/buffline")
		end,
	})

	-- Documentation
	use({
		"danymat/neogen",
		config = function()
			require("neogen").setup({
				enabled = true,
				input_after_comment = true,
			})
		end,
	})

	-- Auto Save
	use({
		"Pocco81/auto-save.nvim",
		config = function()
			require("plugins/auto-save")
		end,
	})

	-- nvim-runscript
	use({
		"klesh/nvim-runscript",
		config = function()
			require("nvim-runscript").setup({})
		end,
	})

	-- Neo Tree
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				popup_border_style = "rounded",
			})
		end,
	})

	-- Formatter
	require("packer").use({
		"mhartington/formatter.nvim",
		config = function()
			require("plugins/formatter")
		end,
	})

    -- Markdown preview
    -- install without yarn or npm
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use({ 
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" }, })
    end)
