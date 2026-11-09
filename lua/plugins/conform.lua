return {
    "stevearc/conform.nvim",
    opts = {},
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                c = { "clang-format" },
                haskell = { "my_fourmolu" },
                html = { "html_beautify" },
                lua = { "my_stylua", stop_after_first = true },
                javascript = { "my_prettierd", stop_after_first = true },
            },
            formatters = {
                my_fourmolu = {
                    command = "fourmolu",
                    stdin = true,
                    args = {
                        "--stdin-input-file",
                        "$FILENAME"
                    },
                },
                my_stylua = {
                    command = "stylua",
                    args = {
                        "--config-path",
                        "/home/kairos/.config/nvim/lua/resources/stylua.toml",
                        "--stdin-filepath",
                        "$FILENAME",
                        "-",
                    },
                },
                my_prettierd = {
                    command = "prettierd",
                    args = { "$FILENAME" },
                    stdin = true,
                    env = {
                        PRETTIERD_DEFAULT_CONFIG = "/home/kairos/.config/nvim/lua/resources/.prettierrc",
                    },
                },
            },
        })
    end,
}
