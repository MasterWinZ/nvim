return {
    'L3MON4D3/LuaSnip',
    version = '<CurrentMajor>.*',
    build = 'make install_jsregexp',
    dependencies = {
        'saadparwaiz1/cmp_luasnip',
        'rafamadriz/friendly-snippets',
        'iurimateus/luasnip-latex-snippets.nvim',
    },
}