require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "typescript", "javascript", "python", "cpp" },
  sync_install = false,
  auto_install = true,
  highlight = {
	  enable = true,
  },
}
