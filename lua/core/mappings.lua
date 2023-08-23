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

-- Trouble
vim.keymap.set('n', '<leader>x', '<cmd>TroubleToggle<CR>')
vim.keymap.set('n', 'gr', '<cmd>Trouble lsb_references<CR>')

-- LazyGit
vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<CR>')

-- ToggleTerm
vim.keymap.set('n', '<leader>t', '<cmd>ToggleTerm<CR>')
