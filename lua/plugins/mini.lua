return {
    {
        'echasnovski/mini.comment',
        config = function()
            require('mini.comment').setup()
        end
    },

    {
        'echasnovski/mini.surround',
        config = function()
            require('mini.surround').setup()
        end
    },

    {
        'echasnovski/mini.pairs',
        config = function()
            require('mini.pairs').setup()
        end
    },

    {
        'echasnovski/mini.jump2d',
        config = function()
            require('mini.jump2d').setup({
                mappings = {
                    start_jumping = '<CR>',
                },
            })
        end
    },

    {
        'echasnovski/mini.jump',
        config = function()
            require('mini.jump').setup({
                delay = {
                    -- Delay between jump and automatic stop if idle (no jump is done)
                    idle_stop = 2000,
                },
            })
        end
    }
}
