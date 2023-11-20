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
	{ 'phaazon/hop.nvim' },
	-- NeoTree
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
    		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
    		}
	},
	-- Treesitter
	{ 'nvim-treesitter/nvim-treesitter' },
	-- nvim-lspconfig
	{ 'neovim/nvim-lspconfig' },
	-- Gruvbox Theme
	{ 'ellisonleao/gruvbox.nvim' },
  -- nvim-cmp autocomplite
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-cmdline' },
  { 'hrsh7th/nvim-cmp' },
  -- Mason lsp manager
  { 'williamboman/mason.nvim' },
  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  -- null-ls formatter
  { 'jose-elias-alvarez/null-ls.nvim' },
  -- auto-pairs
  { 'windwp/nvim-autopairs', event = 'InsertEnter', opts = {} },
  -- Bufferline tabs
  { 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },
  -- Comment.nvim comments
  { 'numToStr/Comment.nvim', lazy = false },
  -- Dashboard
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { {'nvim-tree/nvim-web-devicons'} }
  },
  -- gitsigns
  { 'lewis6991/gitsigns.nvim' },
  -- lualine
  { 'nvim-lualine/lualine.nvim' },
  -- trouble
  { 'folke/trouble.nvim', dependencies = { "nvim-tree/nvim-web-devicons" }, },
  -- LazyGit
  { 'kdheepak/lazygit.nvim', dependencies = { "nvim-lua/plenary.nvim" } },
  -- Symbols outline
  { 'simrat39/symbols-outline.nvim' },
  -- Toggleterm
  { 'akinsho/toggleterm.nvim', version = "*", config = true },
  -- AutoSave
  -- { 'pocco81/auto-save.nvim' },
  -- Project Manager
  {'ahmedkhalf/project.nvim'},
})
