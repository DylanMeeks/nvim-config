return {
    {
        "danymat/neogen",
        -- Uncomment next line if you want to follow only stable versions
        version = "*",
        config = function ()
           local neogen = require('neogen')
           neogen.setup({})
        end,
    },
}
