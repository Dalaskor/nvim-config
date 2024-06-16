require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>gg", ":LazyGit<cr>", { desc = "Run LazyGit" })
-- map("n", "<leader>fl", {
--   function()
--     vim.lsp.buf.format { async = true }
--   end,
--   "LSP formatting",
-- })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Debugger
local dap = require('dap');
local dapui = require('dapui');

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

-- Tabs
map('n', "<leader>B", ":tabnew<CR>")
map('n', "<leader>X", ":tabclose<CR>")
map('n', "<leader>N", ":tabnext<CR>")
map('n', "<leader>P", ":tabprevious<CR>")

-- LSP diagnostic
map('n', "<leader>lf", "<cmd>lua vim.diagnostic.open_float()<CR>")
