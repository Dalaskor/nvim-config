require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- LazyGit
map("n", "<leader>gg", ":LazyGit<cr>", { desc = "Run LazyGit" })

-- Debugger
local dap = require "dap"
local dapui = require "dapui"

map("n", "<leader>ds", function()
  dap.continue()
end, { desc = "Debug - Continue" })

map("n", "<leader>du", function()
  dapui.toggle()
end, { desc = "Debug - Toggle UI" })

map("n", "<leader>db", function()
  dap.toggle_breakpoint()
end, { desc = "Debug - Breakpoint" })

map("n", "<leader>dn", function()
  dap.step_over()
end, { desc = "Debug - Step over" })

-- LSP diagnostic
map("n", "<leader>lf", "<cmd>lua vim.diagnostic.open_float()<CR>")
