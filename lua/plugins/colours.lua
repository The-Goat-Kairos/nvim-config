return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},

    config = function()
        require("tokyonight").setup({
            style = "night",
            terminal_colours = true,
            
            on_colors = function(colors)
            end
        })

        vim.cmd[[colorscheme tokyonight]]
    end,
}
