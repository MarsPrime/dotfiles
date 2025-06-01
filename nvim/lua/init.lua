--require'py_lsp'.setup {
  -- This is optional, but allows to create virtual envs from nvim
--  host_python = "/usr/bin/python3.11",
--  default_venv_name = "venv" -- For local venv
--
--
--}
local lspconfig = require('lspconfig')

lspconfig.pyright.setup({})
lspconfig.clangd.setup({config})


-- Подключение плагинов
local cmp = require('cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },

  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),

  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
    { name = 'path' },
  }),

})


local capabilities = require('cmp_nvim_lsp').default_capabilities()


lspconfig.clangd.setup {
  capabilities = capabilities,
  on_attach = function(client, bufnr)

  end,
  cmd = { "clangd" }, 
}

