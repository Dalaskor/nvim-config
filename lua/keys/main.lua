require('keys/alias')

-- Назначает дополнительной клавишей для отключения режима J + K
im('jk', '<escape>')

-- Сохранение
nm('s', '<nop>') -- Анбинд s
nm('<leader>k', '<cmd>w<CR>')
