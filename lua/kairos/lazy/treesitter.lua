return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "vimdoc", "javascript", "typescript", "c", "lua", "rust", "bash", "kotlin", "html", "css", "svelte"
      },

      sync_install = false,

      -- Install tree-sitter-cli (npm install tree-sitter-cli)
      auto_install = true,

      indent = {
        enable = true
      },

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

    })
  end
}
