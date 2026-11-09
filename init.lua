require('config.lazy');
require('config.set');
require('config.remap');
require('config.autorun');

vim.api.nvim_del_keymap('n', '<C-o>') -- Allows me to jump back

vim.cmd("filetype plugin indent on")
vim.cmd("syntax enable")

-- Haskell
vim.cmd("let g:haskell_enable_quantification = 1")
vim.cmd("let g:haskell_enable_recursivedo = 1")
vim.cmd("let g:haskell_enable_arrowsyntax = 1")
vim.cmd("let g:haskell_enable_pattern_synonyms = 1")
vim.cmd("let g:haskell_enable_typeroles = 1")
vim.cmd("let g:haskell_enable_static_pointers = 1")
vim.cmd("let g:haskell_backpack = 1")
vim.cmd("let g:haskell_classic_highlighting = 1")

vim.deprecate = function() end
