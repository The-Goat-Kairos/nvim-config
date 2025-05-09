return {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    config = function()
        require("Comment").setup({
            toggler = {
                line = '<C-_>',
                block = '<C-_>'
            },
        })
    end
}
