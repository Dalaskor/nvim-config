require'nvim-treesitter.configs'.setup {
    -- Parsers
	ensure_installed = {
        "lua",
        "c", "cpp",
        "python",
        "typescript", "javascript",
        "css", "scss", "html",
        "json", "markdown", "markdown_inline",
        "sql"
    },

	sync_install = false,

	highlight = {
		enable = true,
		disable = {},
	},

	indent = {
		enable = false,
		disable = {},
	}
}
