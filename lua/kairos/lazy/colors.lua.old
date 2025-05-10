return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
        styles = {
          comments = { italic = false },
          keywords = { italic = false },

          sidebars = "dark", -- style for sidebars, see below
          floats = "dark", -- style for floating windows
        },
      })

      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
