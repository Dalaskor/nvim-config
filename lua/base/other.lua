local opt = vim.opt
local g = vim.g

--[[ PANELS ]]--
opt.splitright = true
opt.splitbelow = true
opt.clipboard = 'unnamedplus'
opt.fixeol = false
opt.number = true
opt.relativenumber = true

vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]
