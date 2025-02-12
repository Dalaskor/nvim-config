local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    -- javascript = { "deno_fmt" },
    -- typescript = { "deno_fmt" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    sql = { "sql_formatter" },
    python = { "autopep8" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
