return {
    { "fei6409/log-highlight.nvim", event = "BufRead *.log", opts = {} },
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ":TSUpdate",

        opts = {
            ensure_installed = {
                "javascript",
                "markdown",
                "markdown_inline",
                "html",
                "comment",
                "latex",
                "typst",
                "yaml",
                "typescript",
                "c",
                "cpp",
                "lua",
                "rust",
                "bash",
                "html",
                "css",
                "svelte",
                "haskell",
                "python",
            }
        }
    }
}
