require('kairos')
vim.api.nvim_del_keymap('n', '<C-o>')
vim.api.nvim_del_keymap("v", "K")

vim.cmd("filetype plugin indent on")
vim.cmd("syntax enable")

vim.deprecate = function() end

