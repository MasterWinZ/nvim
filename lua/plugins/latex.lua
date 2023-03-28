return {
    {
        'lervag/vimtex',
        ft = { 'tex' },
        config = function()
            if vim.fn.has('win32') == 1 then
                -- use SamatraPDF as PDF viwer for window
                vim.g.vimtex_view_general_viewer = "SumatraPDF"
            else
                -- use Zathura if not window
                vim.g.vimtex_view_general_method = "zathura"
            end
        end
    },
    {
        'jbyuki/nabla.nvim',
        ft = { 'tex' }
    }
}
