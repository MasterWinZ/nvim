return {
    'iamcco/markdown-preview.nvim',
    ft = { 'markdown' },
    build = 'cd app && npm install',
    init = function()
        vim.g.mkdp_filetypes = { 'markdown' }
    end,
    config = function()
        vim.g.mkdp_theme = 'light'
    end
}

