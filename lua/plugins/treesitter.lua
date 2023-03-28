return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
        sync_install = false,
	auto_install = true,
        ignore_install = { "latex" },
	highlight = {
		enable = true,
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

