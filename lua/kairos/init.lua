vim.keymap.set("n", "<A-v>", "<C-v>", {noremap=true, silent=true})
require("kairos.remap")
require("kairos.set")
require("kairos.lazy_init")
require("kairos.autocmd")

local vim = vim
local opt = vim.opt
local api = vim.api

-- Folding
opt.foldmethod = "expr"
opt.foldexpr   = "v:lua.vim.treesitter.foldexpr()"
opt.foldenable = true
opt.foldlevel  = 99
opt.foldlevelstart = 99
opt.foldnestmax = 20

api.nvim_create_autocmd({ "BufReadPost", "FileReadPost", "BufWinEnter" }, {
    group = vim.api.nvim_create_augroup("TreesitterFolding", { clear = true }),
    callback = function()
        if vim.bo.buftype == "" then  -- only for normal files
            vim.wo.foldmethod = "expr"
            vim.wo.foldexpr   = "v:lua.vim.treesitter.foldexpr()"
            vim.wo.foldlevel  = 99
            vim.wo.foldenable = true
        end
    end,
})

-- Various other useful LSP Commands
local KairosGroup = api.nvim_create_augroup('Kairos', {})

vim.api.nvim_create_autocmd('LspAttach', {
  group = KairosGroup,
  callback = function(e)
    local opts = { buffer = e.buf }
    vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  end
})
