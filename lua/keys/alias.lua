local map = vim.api.nvim_set_keymap

-- Setup Hot Keys (normal)
function nm(key, command)
    map('n', key, command, { noremap = true })
end

-- Setup Hot Keys (input)
function im(key, command)
	map('i', key, command, {noremap = true})
end

-- Setup Hot Keys (visual)
function vm(key, command)
	map('v', key, command, {noremap = true})
end

-- Setup Hot Keys (terminal)
function tm(key, command)
	map('t', key, command, {noremap = true})
end
