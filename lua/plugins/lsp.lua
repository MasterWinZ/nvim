return 	{
    'williamboman/mason.nvim',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    },
    opts = function()
        require('mason').setup()
        require('mason-lspconfig').setup()

        vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {border = 'rounded'})

        local on_attach = function(_, _)
            -- Mappings.
            -- See `:help vim.lsp.*` for documentation on any of the below functions
            local bufopts = { noremap=true, silent=true, buffer=bufnr }
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
            vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
            vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
        end

        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        require('lspconfig').lua_ls.setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })

        require('lspconfig').emmet_ls.setup({
            -- on_attach = on_attach,
            capabilities = capabilities,
            filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
            init_options = {
                html = {
                    options = {
                    -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
                    ["bem.enabled"] = true,
                    },
                },
            }
        })

        require('lspconfig').cssls.setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })
    end
}
