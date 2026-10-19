return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    opts = {},

    config = function()
        ensure_installed = {
            "lua_ls",
        }
    end,
}
