return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "kyazdani42/nvim-web-devicons"
    },
    opts = {
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff','diagnostics'},
            lualine_c = {
                    {
                            'filename',
                            path = 1,
                    }
            },
            lualine_x = {},
            lualine_y = {'fileformat', 'filetype', 'location'},
            lualine_z = {'progress'}
	},
    }
}
