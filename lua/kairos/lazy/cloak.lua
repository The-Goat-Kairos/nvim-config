return {
  "laytan/cloak.nvim",

  config = function()
    require("cloak").setup({
      enabled = true,
      cloak_character = "*",
      patterns = {
        {
          file_pattern = {
            ".env*",
            "wrangler.toml",
            ".dev.vars",
          },
          cloak_pattern = "=.+"
        }
      }
    })
  end
}
