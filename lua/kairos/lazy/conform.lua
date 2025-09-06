return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
                c = { "clang-format" },
                haskell = { "ormolu" },
				lua = { "my_stylua", stop_after_first = true },
				javascript = { "my_prettierd", stop_after_first = true },
			},
			formatters = {
                my_stylua = {
                    command = "stylua",
                    args = { "--config-path", "/home/kairos/.config/nvim/lua/kairos/utils/stylua.toml", "$FILENAME" }
                },
				my_prettierd = {
					command = "prettierd",
					args = { "$FILENAME" },
					stdin = true,
					env = {
                        PRETTIERD_DEFAULT_CONFIG="/home/kairos/.config/nvim/lua/kairos/utils/.prettierrc"
					},
				},
			},
		})
	end,
}
