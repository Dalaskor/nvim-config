vim.g.mapleader = " "

-- NeoTree
vim.keymap.set('n', '<leader>v', ':Neotree float toggle focus<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float toggle git_status<CR>')

-- Bufferline
vim.keymap.set('n', 'gx', '<cmd>bd<CR>')
vim.keymap.set('n', 'gT', '<cmd>BufferLineCyclePrev<CR>')
vim.keymap.set('n', 'gt', '<cmd>BufferLineCycleNext<CR>')

-- Telescope
vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<CR>')
vim.keymap.set('n', 'gp', '<cmd>Telescope projects<CR>')

-- Trouble
vim.keymap.set('n', '<leader>x', '<cmd>TroubleToggle<CR>')
vim.keymap.set('n', 'gr', '<cmd>Trouble lsb_references<CR>')

-- LazyGit
vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<CR>')

-- ToggleTerm
vim.keymap.set('n', '<leader>t', '<cmd>ToggleTerm<CR>')

-- Tabby
-- vim.api.nvim_set_keymap("n", "<leader>ta", ":$tabnew<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<leader>tc", ":tabclose<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<leader>to", ":tabonly<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<leader>tn", ":tabn<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<leader>tp", ":tabp<CR>", { noremap = true })
-- -- move current tab to previous position
-- vim.api.nvim_set_keymap("n", "<leader>tmp", ":-tabmove<CR>", { noremap = true })
-- -- move current tab to next position
-- vim.api.nvim_set_keymap("n", "<leader>tmn", ":+tabmove<CR>", { noremap = true })
