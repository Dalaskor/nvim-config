-- Добавляем Packer как пакет в Neovim
vim.cmd [[packadd packer.nvim]]

-- Используем данный коллбэк как список для плагинов
return require('packer').startup(function()

	-- Добавляем Packer в список, чтобы он обновлял сам себя
	use 'wbthomason/packer.nvim'

	--[[ ТЕМЫ ]]--
	-- GitHub Theme
	--[[ use({'projekt0n/github-nvim-theme',
		config = function()
			require('github-theme').setup({
				theme_style = "dark_default",
			})
  		end
	}) ]]

	use 'Mofiqul/dracula.nvim'
	vim.cmd[[colorscheme dracula]]

    use {
        'xiyaowong/transparent.nvim',
        config = function()
            require("transparent").setup({
                groups = { -- table: default groups
                    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
                    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
                    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
                    'SignColumn', 'CursorLineNr', 'EndOfBuffer',
                },
                extra_groups = { -- table/string: additional groups that should be cleared
                -- In particular, when you set it to 'all', that means all available groups

                -- example of akinsho/nvim-bufferline.lua
                    "BufferLineTabClose",
                    "BufferlineBufferSelected",
                    "BufferLineFill",
                    "BufferLineBackground",
                    "BufferLineSeparator",
                    "BufferLineIndicatorSelected",
                },
                exclude_groups = {}, -- table: groups you don't want to clear
            })
        end
    }
    

	--[[ ПРОВОДНИК ]]--
	-- Neo Tree
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires  = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		}
	}

	--[[ LSP ]]--
	-- LSP сервер
	use 'neovim/nvim-lspconfig'

	-- Прогресс LSP
	use {
		'j-hui/fidget.nvim',
		config = function()
			require('fidget').setup({
				text = {
					spinner = "star",
					commenced = "Запускаю котанов😺😺😺😺",
					completed = "Котаны готовы автодополнять😺"
				},
				align = {
					bottom = false
				}
			})
		end
	}

	use({
		'ray-x/navigator.lua',
		requires = {
			{ 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
			{ 'neovim/nvim-lspconfig' },
		},
		config = function()
			require('navigator').setup()
		end
	})

	-- Удобное меню для обозрения проблем LSP
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {}
		end,
	}

	-- Автодополнение
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-emoji',
			'hrsh7th/cmp-nvim-lsp-signature-help',
			'hrsh7th/cmp-nvim-lua'
		},
		config = function()
			require('plugins/cmp')
		end
	}

	-- Иконки для автодополнения
	use {
		'onsails/lspkind-nvim',
		config = function()
			require('plugins/lspkind')
		end
	}

	-- Структура для LSP
	use {
		'simrat39/symbols-outline.nvim',
		config = function()
			require('plugins/symbols-outline')
		end,
	}

	-- Инсталлер для серверов LSP
	use {
		'williamboman/nvim-lsp-installer',
		config = function()
			require('plugins/lsp-installer')
		end
	}

	use {
		"SmiteshP/nvim-navic",
		requires = "neovim/nvim-lspconfig"
	}

	-- Статуслайн
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function()
			require('plugins/lualine')
		end
	}

	-- Комментарии
	use {
		'b3nj5m1n/kommentary',
		config = function()
			require('kommentary.config').configure_language("typescript", {
				single_line_comment_string = "//",
				multi_line_comment_strings = { "/*", "*/" },
			})
		end,
	}

	-- Плагин для подсветки синтаксиса
	use {
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require('plugins/tree-sitter')
		end
	}

	-- Плагин для автодополнения скобок и кавычек
	use {
		'windwp/nvim-autopairs',
		config = function()
			require('nvim-autopairs').setup {}
		end
	}
	
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Стутусбар для буферов
	use {
		'akinsho/bufferline.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function()
			require('plugins/buffline')
		end
	}

	-- Тесты в Neovim
	use {
		"vim-test/vim-test",
	}

	-- Документация
	use {
		'danymat/neogen',
		config = function ()
			require('neogen').setup {
				enabled = true,
				input_after_comment = true,
			}
		end
	}

	-- Корректный синтаксис JSX
	use {
		'neoclide/vim-jsx-improve'
	}

	-- Prettier
	use {
		'prettier/vim-prettier'
	}

	-- autopep8
	use {
		'tell-k/vim-autopep8',
	}

	-- Auto Save
	use {
		'Pocco81/auto-save.nvim',
		config = function()
			require('plugins/auto-save')
		end
	}

    -- ToggleTerm
    use {
        "akinsho/toggleterm.nvim", tag = '*', config = function()
            require("toggleterm").setup()
        end
    }

    -- Git
    use {
        'dinhhuy258/git.nvim',
		config = function()
			require('plugins/git')
		end
    }

    -- nvim-runscript
    use {
        "klesh/nvim-runscript",
        config = function()
            require("nvim-runscript").setup{}
        end
    }
end)
