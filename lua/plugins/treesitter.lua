return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
        sync_install = false,
	auto_install = true,
	highlight = {
            enable = true,
            disable = { "latex" },
            additional_vim_regex_highlighting = { "latex", "markdown" },
	},
	autotag = {
    	enable = true,
	}
    },
    config = function(_, opts)
        if vim.fn.has('win32') == 1 then
            require('nvim-treesitter.install').compilers = { "clang", "gcc" }
        end
        require("nvim-treesitter.configs").setup(opts)
    end
}

