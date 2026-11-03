require('config.lazy');
require('config.set');
require('config.remap');

vim.api.nvim_del_keymap('n', '<C-o>') -- Allows me to jump back

vim.cmd("filetype plugin indent on")
vim.cmd("syntax enable")

vim.deprecate = function() end
