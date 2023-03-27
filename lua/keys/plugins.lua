require('keys/alias')

vim.g.mapleader = ' '                                             -- Используем Space, как клавишу для альтернативных хотекеев

-- Отркыть Neo Tree
nm('<leader>v', '<cmd>NeoTreeRevealToggle<CR>')

-- LSP (все горячие клавиши начинаются с g), кроме ховера
nm('K', '<cmd>lua vim.lsp.buf.hover()<CR>' )                      -- Ховер для объекта
nm('gf', '<cmd>lua vim.lsp.buf.formatting()<CR>')                 -- Форматировать документ
nm('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')                -- Действия с кодом
nm('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')                     -- Переименовать объект

-- Telescope
nm('gd', '<cmd>Telescope lsp_definitions<CR>')                       -- Объявления в LSP
nm('<leader>p', '<cmd>Telescope oldfiles<CR>')                       -- Просмотр недавних файлов
nm('<leader>o', '<cmd>Telescope git_files<CR>')                      -- Поиск файлов
nm('<leader>b', '<cmd>Telescope git_branches<CR>')                   -- Ветки в Git
nm('<leader>f', '<cmd>Telescope live_grep<CR>')                      -- Поиск строки
nm('<leader>q', '<cmd>Telescope buffers<CR>')                        -- Буфферы

-- SymbolsOutline
-- nm('<leader>s', '<cmd>SymbolsOutline<CR>')                        -- Структура для файла

-- BufferLine
nm('gx', '<cmd>bd<CR>')                                            -- Закрыть буффер
nm('gT', '<cmd>BufferLineCyclePrev<CR>')                           -- Перейти в предыдущий буффер
nm('gt', '<cmd>BufferLineCycleNext<CR>')                           -- Перейти в следующий буффер
-- nm('˘', '<cmd>BufferLineMoveNext<CR>')                            -- Закрыть буффер слева
-- nm('¯', '<cmd>BufferLineMovePrev<CR>')                            -- Закрыть буффер справа

-- Formatter
-- nm('<leader>l', '<cmd>Format<CR>')

-- Prettier
nm('<leader>l', '<cmd>Prettier<CR>')

-- Trouble
nm('<leader>x', '<cmd>TroubleToggle<CR>')                         -- Открыть меню с проблемами LSP
nm('gr', '<cmd>Trouble lsp_references<CR>')                       -- Референсы в LSP

-- Autopep8
nm('<F8>', '<cmd>Autopep8<CR>')

-- ToggleTerm
nm('<F12>', '<cmd>ToggleTerm<CR>')
nm('2<F12>', '<cmd>ToggleTerm 2<CR>')

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
