local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },
    window = {
      --completion = cmp.config.window.bordered(),
      --documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'path' },
      { name = 'luasnip' },
      { name = 'buffer' },
      { name = "copilot", group_index = 2 },
    })
  })


  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  local capabilities = require('cmp_nvim_lsp').default_capabilities()

   require'lspconfig'.bashls.setup {
      capabilities = capabilities
   }

   require'lspconfig'.clangd.setup {
      capabilities = capabilities
   }

   require'lspconfig'.superhtml.setup {
      capabilities = capabilities
   }

   require'lspconfig'.html.setup {
      capabilities = capabilities,
   }

   require'lspconfig'.pyright.setup {
      capabilities = capabilities,
   }

   require'lspconfig'.ts_ls.setup {
      capabilities = capabilities,
   }

   require'lspconfig'.fortls.setup{}
