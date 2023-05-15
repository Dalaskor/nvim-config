require('keys/alias')

-- Space for <leader>
vim.g.mapleader = ' '

-- Disable insert mode (J + K)
-- im('jk', '<escape>')

-- Save
nm('s', '<nop>') -- unbid s
nm('<leader>k', '<cmd>w<CR>')
