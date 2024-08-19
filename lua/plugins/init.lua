return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "node-debug2-adapter",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "markdown",
        "markdown_inline",
        "prisma",
        "pug",
      },
    },
  },

  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    lazy = false,
  },

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require "configs.dashboard"
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
    lazy = false,
  },

  {
    "mfussenegger/nvim-dap",
    config = function()
      require "configs.dap"
    end,
    dependencies = {
      "mxsdev/nvim-dap-vscode-js",
    },
    lazy = false,
  },

  {
    "rcarriga/nvim-dap-ui",
    config = function()
      require("dapui").setup()
      local dap, dapui = require "dap", require "dapui"
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open {}
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close {}
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close {}
      end
    end,
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  },

  {
    "rust-lang/rust.vim",
    lazy = false,
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require "configs.catpuccin"
    end,
  },
}
