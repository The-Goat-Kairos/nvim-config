return {
  "JafarDakhan/vim-gml",
  ft = "gml",
  config = function()
    vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
      pattern = "*.gml",
      command = "setfiletype gml",
    })
  end,
}
