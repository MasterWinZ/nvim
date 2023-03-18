return 	{
    'hrsh7th/nvim-cmp',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
    },
    opts = function ()
        local cmp = require('cmp')
        local luasnip = require('luasnip')

        require('luasnip').config.setup({ history = true })
        require('luasnip.loaders.from_vscode').lazy_load()
        require('luasnip-latex-snippets').setup()

        cmp.setup({
            snippet = {
                -- REQUIRED - you must specify a snippet engine
                expand = function(args)
                        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-j>'] = cmp.mapping.select_next_item(),
                ['<C-k>'] = cmp.mapping.select_prev_item(),
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                ['<Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                                -- this will auto complete if our cursor in next to a word and we press tab
                    -- elseif has_words_before() then
                    --     cmp.complete()
                    else
                        fallback()
                    end
                end, {'i', 's'}),

                ['<S-Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, {'i', 's'})
                }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip'},
            }, {
                { name = 'buffer' },
            })
        })
    end
}
