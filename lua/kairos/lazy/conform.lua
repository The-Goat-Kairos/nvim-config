return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "my_prettierd", stop_after_first = true },
			},
			formatters = {
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
