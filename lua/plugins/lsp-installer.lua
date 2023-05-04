local lspinstaller = require'nvim-lsp-installer'
local lspconfig = require'lspconfig'

lspinstaller.setup{
	ensure_installed = {
        -- C++
        'clang',
        -- Python
		'pyright',
        -- TypeScript/JavaScript
		'tsserver',
        -- HTML
		'emmet_ls',
        -- CSS
		'cssls',
        -- Lua
        'sumnako_lua',
        -- Markdown
        'remark_ls',
	},
}

-- Возможности редактора
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Добавляем возможность использовать сниппеты
capabilities.textDocument.completion.completionItem.snippetSupport = true

for _, server in ipairs(lspinstaller.get_installed_servers()) do
  lspconfig[server.name].setup{
    flags = {
      debounce_text_changes = 150,
    },
    -- capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
  }
end
