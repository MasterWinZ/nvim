return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "BurntSushi/ripgrep",
        "nvim-telescope/telescope-file-browser.nvim",
        "nvim-telescope/telescope-media-files.nvim",
    },
    opts = function()
        require('telescope').setup({
            defaults = {
                mappings = {
                    n = {
                        ['q'] = require('telescope.actions').close
                    }
                }
            },
            extensions = {
                file_browser = {
                    theme = 'dropdown',
                    hijack_netrw = true,
                },
            } 
        })
        require('telescope').load_extension('file_browser', 'nvim-telescope/telescope-media-files.nvim')
    end
}
