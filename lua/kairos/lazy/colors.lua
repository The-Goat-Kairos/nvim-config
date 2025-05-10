return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    config = function()
      require("tokyonight").setup({
        style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
      })

      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
