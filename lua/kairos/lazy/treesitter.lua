return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require('nvim-treesitter').install { "javascript", "typescript", "c", "cpp", "lua", "rust", "bash", "html", "css", "svelte", "haskell", "python" }
    -- require("nvim-treesitter.configs").setup({

    --   sync_install = false,

    --   -- Install tree-sitter-cli (npm install tree-sitter-cli)
    --   auto_install = true,

    --   indent = {
    --     enable = true
    --   },

    --   highlight = {
    --     enable = true,
    --     additional_vim_regex_highlighting = false,
    --   },

    -- })
  end
}
