require('config.lazy');
require('config.set');
require('config.remap');

vim.cmd("filetype plugin indent on")
vim.cmd("syntax enable")

vim.deprecate = function() end
