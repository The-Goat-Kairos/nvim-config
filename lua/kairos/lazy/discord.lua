return {
  "andweeb/presence.nvim",
  config = function()
    require("presence").setup({
      neovim_image_text = "Bow down before the celestial.",
      main_image = "file",
      enable_line_number = true,
    })
  end
}
