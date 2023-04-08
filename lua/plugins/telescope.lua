return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        'nvim-lua/popup.nvim',
        "nvim-lua/plenary.nvim",
        "BurntSushi/ripgrep",
        "nvim-telescope/telescope-file-browser.nvim",
        -- "nvim-telescope/telescope-media-files.nvim",
    },
    opts = function()
        require('telescope').setup({
            defaults = {
                mappings = {
                    n = {
                        ['q'] = require('telescope.actions').close,
                        ['sh'] = require('telescope.actions').select_horizontal,
			['sv'] = require('telescope.actions').select_vertical,
			['te'] = require('telescope.actions').select_tab,
                    }
                }
            },
            pickers = {
                find_files = {
                    hidden = true,
                    theme = 'dropdown',
                    previewer = false,
                    layout_config = { height = 20 }
                },

                help_tags = {
                    theme = 'ivy',
                },

                buffers = {
                    hidden = true,
                    theme = 'dropdown',
                    initial_mode = 'normal',
                    previewer = false,
                    layout_config = { height = 20 }
                },

                live_grep = {
                    hidden = true,
                    theme = 'ivy',
                },

                diagnostics = {
                    theme = 'ivy',
                    initial_mode = 'normal',
                },
            },
            extensions = {
                file_browser = {
                    theme = 'dropdown',
                    hijack_netrw = true,
                    path = "%:p:h",
                    respect_gitignore = false,
                    hidden = true,
                    grouped = true,
                    initial_mode = 'normal',
                    previewer = false,
                    layout_config = { height = 30 }
                },
            },
        })
        require('telescope').load_extension('file_browser')
        -- require('telescope').load_extension('media_files')
    end
}
